#!/bin/bash
# Simple debug credential helper that echoes exactly what it receives
# and outputs a fixed token

# Read all input
while IFS= read -r line; do
    echo "[DEBUG] Received: $line"
done

echo "[DEBUG] ---
[DEBUG] Returning credentials:"
echo "protocol=https"
echo "host=github.com"
echo "username=ponypray"
echo "password=$(cat /Users/pony/.token_secret 2>/dev/null || echo 'NOT_FOUND')"