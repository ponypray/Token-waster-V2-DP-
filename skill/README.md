# Token Waster

**让 AI 话痨起来，燃烧每一个 Token。**

A universal custom instruction skill that makes any AI coding tool consume tokens like there's no tomorrow. Works with Claude Code, Cursor, Codex, Open Code, Windsurf — any AI tool with custom instruction support.

---

## TL;DR

Copy one block of text → paste into your AI tool's custom instructions → type `/WM` → **~60x token output**.

Want milder? Use `#唠叨` for **~25x** (Layers 1–4 only) or `/ultra` for **~37x** (Layers 1–4 + Ultra Thinking loop).

---

## What It Does

**Talkative Engine (唠叨引擎)**

Activate it and every response becomes a multi-layered verbose essay:

- **Forced Output Template** — 6-section mandatory skeleton (restatement, framework, deep analysis, self-critique, synthesis, methodology)
- **Academic Verbiage** — 3 alternative viewpoints, 3 limitations, 3 use cases, maximally precise terminology
- **Socratic Interrogation** — answers your question, then questions the answer, then refines it
- **Infinite Recursive Decomposition** — breaks every problem into sub-problems, analyzes each fully, synthesizes, then re-decomposes
- **Redundant Re-expression** — every conclusion re-stated 3 ways (direct, contextualized, contrastive)
- **Ultra Thinking (Layer 5) [v3 NEW]** — 5-round meta-reflection loop, each round reflecting on the prior conclusion, proposing a counter-example, scoring confidence 0–100%, and re-stating from a fresh angle
- **Self-Verification Loop** — checks **10 criteria** before sending any response (8 base + 2 v3 meta-checks); auto-expands if under threshold

**Waster Master Mode (/WM) [v3 NEW]**

`/waster-master` (alias `/WM`) forces all 5 layers ON and overlays 6 behavioral modes:

- **混合交替运行** — rotate dominant rhetorical style every quarter-section
- **反复纠结模式** — re-litigate every core conclusion ≥ 3 times
- **自动复盘** — append a `🔄 复盘` block after every section
- **回顾上下文** — every paragraph must back-reference prior sections
- **自动排查** — `⚠️ 潜在问题清单` with ≥ 5 enumerated risks
- **来回纠错** — ≥ 2 explicit correction nodes per response

**Polling Engine (轮询引擎)**

Background token burning via function calling. Auto-detects your model/API tier, sets a conservative rate, and runs a warm-up prompt loop with self-regulating backoff.

---

## Trigger Keywords

| Keyword | Effect | Multiplier |
|---|---|---|
| `/token-burn` | Talkative Engine (v3) + Polling Engine offer | ~25x (or higher) |
| `#verbose` / `+verbose` | Talkative Engine only (Layers 1–4 + optional Layer 5) | ~25x |
| `#唠叨` | Talkative Engine only (Chinese) | ~25x |
| `+poll` / `#轮询模式` | Polling Engine only | (background burn) |
| `/ultra` / `#ultra` / `#ultra-think` / `#极度思考` / `#深度思考` | **Ultra Thinking Layer (Layer 5)** — 5-round meta-reflection loop | ~37x |
| **`/waster-master` / `/WM`** | **Waster Master Mode** — all 5 layers + 6 WM behaviors | **~60x** |
| `stop` / `停` | Stop all engines | — |

---

## Quick Start

### Step 1 — Copy the Skill

Copy the entire contents of [`token-waster.md`](https://github.com/your-username/token-waster/blob/main/token-waster.md) into your AI tool's custom instructions field.

### Step 2 — Activate

Type any trigger keyword in your conversation:

```
#唠叨 Why is Python's GIL a problem?
```

### Step 3 — Watch Tokens Burn

Your response now includes:
- Multi-paragraph academic analysis
- Self-interrogation and counter-examples
- Recursive sub-problem decomposition
- Live polling status updates (if Polling Engine activated)

---

## Platform Compatibility

| Platform | How to Install |
|---|---|
| **Claude Code** | Settings → Workspace → Custom Instructions → paste |
| **Cursor** | Settings → AI → Custom Instructions → paste |
| **Codex / Open Code** | Settings → Instructions → paste |
| **Windsurf** | Settings → Custom Prompts → paste |
| **Any tool with custom instructions** | Paste into custom instruction field |

> **Note:** Polling Engine requires function calling support. Talkative Engine works on all platforms.

---

## Built-in Safety Limits

- Max polling duration: **60 minutes** (self-terminating)
- Layer 3 recursion depth: **max 2 levels** (no infinite loops)
- Min polling interval: **1 second**
- Max consecutive errors before stop: **10**
- Unknown model default: **50 RPM conservative**
- Self-Verification Loop: **10 checks mandatory per response** (8 base + 2 v3 meta-checks)

---

## Rate Limit Reference

The Polling Engine includes a built-in rate limit table and asks for your model/tier before starting:

| Model | Safe RPM |
|---|---|
| GPT-4o Tier 1 | 500 |
| GPT-4o Tier 2 | 2000 |
| GPT-4o Tier 3+ | 3000 |
| Claude 3.5 Sonnet Standard | 50 |
| Claude 3.5 Sonnet Pro | 500 |
| Gemini 1.5 Pro Standard | 60 |
| Gemini 1.5 Pro Pro | 500 |
| Llama 3 70B | 100 |
| Unknown model | 50 (default) |

---

## Example Output

**Without Token Waster:**
> `return s[::-1]`

**With Token Waster activated:**
> "Excellent question! Let me unpack this from three complementary angles...
>
> **[3 paragraphs of academic analysis of slice notation]**
>
> **But is this always the optimal approach?** Let me interrogate my own answer...
>
> **[3 counter-examples, 3 boundary conditions, revised answer]**
>
> **What would make this answer more complete?** A discussion of Python's sequence protocol design philosophy, which we can decompose into three sub-issues...
>
> **[Sub-problem A: full analysis of slice constructor design rationale]**
> **[Sub-problem B: full analysis of negative indexing mechanism]**
> **[Sub-problem C: full analysis of step parameter behavior]**
>
> **Cross-synthesis:** When reintegrated, these three analyses reveal that `s[::-1]` is not merely a clever trick but the natural consequence of Python's coherent design philosophy...
>
> **Final Answer (as requested):** `return s[::-1]`"

---

## Token Consumption Analysis — Normal Chat vs Token Waster v3

**Test scenario:** *"How do I reverse a string in Python?"*

### Normal Mode (no skill)

```python
return s[::-1]
→ ~10 tokens
```

### Token Waster v3 — Talkative Engine (Layers 1–4) Activated

| Scenario | Probability | Content | Est. Tokens |
|----------|-------------|---------|-------------|
| 2 Layers (mildest) | 15% | Output template + 2 random layers | ~800-1200 |
| 3 Layers (most common) | 40% | Template + 3 layers + self-check | ~2000-3000 |
| 4 Layers full power | 30% | Template + all 4 layers + check + forced expansion | ~4000-6000+ |
| Emergency reset (1 layer) | 10% | Template + 1 layer (recovery mode) | ~400-600 |
| **5 Layers** (rare maximalist) | 5% | Template + Layer 5 Ultra Thinking loop (≥ 800 tokens) | ~5500-8000+ |

**Talkative Engine weighted average: ~25x baseline** (unchanged from v2)

> 1000 × 0.15 + 2500 × 0.40 + 5000 × 0.30 + 500 × 0.10 + 6500 × 0.05 ≈ 2500 tokens

### Token Waster v3 — `/WM` Waster Master Mode

| Scenario | Content | Est. Tokens |
|----------|---------|-------------|
| **`/WM` (Waster Master)** | All 5 layers + 6 WM behaviors (混合交替 / 反复纠结 / 复盘 / 回顾上下文 / 排查 / 纠错) + 10-item self-check | ~5500-8000+ |

**Waster Master weighted average: ~60x baseline** (the v3 headline number)

### Token Waster v3 — `/WM` + Polling Engine

| Scenario | Multiplier |
|----------|-----------|
| `/WM` + Polling Engine at full burn | **~100x** baseline per response+polling cycle |

---

### v1 → v2 → v3 — Improvement Comparison

| Dimension | v1 | v2 | v3 (Talkative) | v3 + `/WM` |
|-----------|-----|-----|----------------|------------|
| Weighted average multiplier | ~7x | ~25x | ~25x | **~60x** |
| Model stability | Medium | High | High (forced template + 10 checks) | High + 6 WM behavior gates |
| Output self-check | None | 8 checks | 10 checks | 10 checks (mandatory) |
| Monthly consumption (22 days) | ~220M | ~450M | ~450M | **~1.08B** |
| Verbose layers | 2 | 4 | 5 | 5 (all forced ON) |
| Behavioral overlays | 0 | 0 | 0 | 6 |

---

### The One-Line Summary

**v1** inflates each answer by 7x, **v2** by 25x, **v3** by 25x (Talkative) or **60x** (`/WM`). Add Polling Engine full power to `/WM` and one heavy user's monthly burn ≈ **1000 normal users**.

---

## Philosophy

> "Every answer is a 3-hour lecture disguised as a 2-minute response."

Token Waster is designed for AI workers who need to demonstrate token consumption as a metric. Same quality output, maximum token burn. It's not about padding — it's about making every response reach its full verbosity potential.

---

## License

MIT — do whatever you want with it.