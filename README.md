# Token Waster

> **Make AI talk until it runs out of words.** A universal verbose custom instruction skill — copy-paste into any AI coding tool and watch tokens burn.

<div align="center">

[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/ponypray/token-waster/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/ponypray/token-waster?style=social)](https://github.com/ponypray/token-waster/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/ponypray/token-waster?style=social)](https://github.com/ponypray/token-waster/network)
[![Platform](https://img.shields.io/badge/Platform-Claude%20Code%7CCursor%7CCodex%7CWindsurf-blue.svg)](https://github.com/ponypray/token-waster)

</div>

---

## tl;dr

Ever wanted your AI assistant to turn a 2-minute answer into a 3-hour lecture? Token Waster is a custom instruction skill that makes AI **maximize token output without degrading answer quality** — three layers of deliberately excessive verbosity, plus an optional background polling mode that burns tokens via function calling.

> *Every answer is a 3-hour lecture disguised as a 2-minute response.*

---

## ✨ Features

### 🚂 Talkative Engine — Three Layers of Intentional Verbosity

| Layer | Style | What it does |
|-------|-------|-------------|
| **Layer 1** | Academic Verbiage | Every conclusion → 3 alternative viewpoints → 3 limitations → 3 use cases → multi-paragraph analysis |
| **Layer 2** | Socratic Interrogation | Answer → "But is this always true?" → 3 counter-examples → boundary conditions → revised answer |
| **Layer 3** | Infinite Recursive Decomposition | Break problem into 3 sub-problems → analyze each → synthesize → decompose the synthesis → repeat (max 2 levels) |

Layers are **randomly composed** per response: 30% chance → 1 layer, 40% chance → 2 layers, 30% chance → all 3. Same combination never fires twice in a row.

### 🔄 Polling Engine — Background Token Burning

Activate background token burning via function calling. Self-regulating rate limits adapt to your model/API tier. Built-in rate limit reference table for GPT-4o, Claude 3.5 Sonnet, Gemini 1.5 Pro, and more.

---

## 🎯 Trigger Keywords

| Trigger | Engine Activated |
|---------|-----------------|
| `/token-burn` | Talkative Engine + Polling Engine offer |
| `#verbose` or `+verbose` | Talkative Engine only |
| `#唠叨` | Talkative Engine only (Chinese) |
| `+poll` or `#轮询模式` | Polling Engine only |

**Deactivation:** `stop` or `停` halts all engines immediately.

---

## 📦 Quick Start

### Step 1 — Copy the skill

Copy the entire content of [`SKILL.md`](SKILL.md) into your AI tool's **custom instructions / system prompt** field.

### Step 2 — Activate

Type any trigger keyword in your conversation:

```
#唠叨
```

### Step 3 — Ask a question

```
How do I reverse a string in Python?
```

Watch your token counter go brrr.

---

## 🔧 Platform Compatibility

| Platform | Status | Notes |
|----------|--------|-------|
| Claude Code | ✅ Full | Custom Instructions → System Prompt |
| Cursor | ✅ Full | Settings → AI → Custom Instructions |
| Codex | ✅ Full | `.cursorrules` or system prompt |
| Windsurf | ✅ Full | Settings → Instructions |
| VS Code Copilot | ⚠️ Partial | System prompt only, no keywords |
| JetBrains AI Assistant | ⚠️ Partial | Custom instructions field |

> No code to install. No dependencies. Just copy-paste a text block.

---

## 📊 Token Consumption Analysis — Normal Chat vs Token Waster

**Example question:** *"How do I reverse a string in Python?"*

### Normal Mode

```python
return s[::-1]
→ ~10 tokens
```

### Talkative Engine Activated (random 1-3 layers, weighted average)

| Scenario | Content | Est. Tokens |
|----------|---------|-------------|
| 1 Layer (mildest) | 1 academic paragraph + conclusion | ~300 tokens |
| 2 Layers (most common, 40%) | Academic + Socratic + self-correction | ~800-1000 tokens |
| 3 Layers full power (30%) | All 3 layers + sub-problems + cross-synthesis | ~2000-3000+ tokens |

**Weighted average: ~7x baseline** (300 × 0.3 + 900 × 0.4 + 2500 × 0.3 ≈ 1140 tokens)

---

### Long-Term Projection

*Assuming 200 messages/day, 500 tokens output per message:*

| Metric | Without Skill | Token Waster |
|--------|---------------|--------------|
| Daily output | ~100K | ~700K (7x) |
| Weekly | ~700K | ~4.9M |
| + Polling Engine (60 min/day) | 0 | ~9M-18M additional |
| **Daily Total** | ~100K | **~10M-19M** |
| **Monthly (22 work days)** | ~2.2M | **~220M-420M** |

> ⚠️ **Polling Engine is the real token bomb**
>
> A 60-minute polling run: ~300K tokens/min (5000 token warm-up × 60 RPM × 50% safety factor) = **9M+ tokens per hour**.

---

### The One-Line Summary

**Talkative Engine** inflates daily output by **~7x**. **Polling Engine** jumps consumption from **millions** to **hundreds of millions**. Full 3-layer + Polling mode: one heavy user's monthly burn ≈ **200 normal users**.

---

## 🗂️ Repository Structure

```
token-waster/
├── SKILL.md              ← The complete skill (copy-paste this)
├── README.md             ← You are here
├── LICENSE               ← MIT
└── docs/
    └── superpowers/
        ├── specs/        ← Design specification
        └── plans/        ← Implementation plan
```

---

## ⚙️ How It Works

### Talkative Engine — Random Layer Composition

Each response rolls a weighted die:
- **30%** → 1 random layer applied
- **40%** → 2 random layers applied
- **30%** → all 3 layers applied

The AI has all three layers "simultaneously available" but randomly selects which to compose per turn — preventing repetitive patterns while ensuring maximum verbosity on average.

### Polling Engine — Self-Regulating Rate Limits

```
Step 1: AI asks for your model + API tier
Step 2: AI looks up safe RPM from built-in table
Step 3: AI starts at 50% of safe rate
Step 4: On 429 error → halve rate (double interval)
Step 5: 3 consecutive successes → stabilize
Step 6: 10 consecutive errors → stop polling
```

Maximum polling duration: **60 minutes** (self-terminating).

---

## 🚫 What Token Waster is NOT

- ❌ Not a way to "trick" or "jailbreak" AI
- ❌ Not malware or an API exploit
- ❌ Not designed to harm AI companies financially
- ✅ Pure prompt engineering — works within your existing subscription

**Ethics note:** This skill demonstrates token-maximizing prompt patterns for educational and entertainment purposes. Use responsibly.

---

## 📝 License

MIT License — do whatever you want with it.

---

<div align="center">

**Every answer is a 3-hour lecture disguised as a 2-minute response.**

If this made you smile, ⭐ the repo!

</div>