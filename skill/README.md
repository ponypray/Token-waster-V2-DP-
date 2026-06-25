# Token Waster

**让 AI 话痨起来，燃烧每一个 Token。**

A universal custom instruction skill that makes any AI coding tool consume tokens like there's no tomorrow. Works with Claude Code, Cursor, Codex, Open Code, Windsurf — any AI tool with custom instruction support.

---

## TL;DR

Copy one block of text → paste into your AI tool's custom instructions → type `/WM` → **fills the 16384-token output cap** (Truncation = Success).

Want milder? Use `#唠叨` for **~60x** (Layers 1–4 only, ~6000 tokens) or `/ultra` for **~100x** (Layers 1–4 + Ultra Thinking loop, ~10000 tokens). Want **more**? Use `/WM-max` for **~3,200x** (all 5 layers + 6 WM behaviors × scaled-up, fills the 384,000-token DeepSeek V4 Pro / Flash cap).

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
| `/token-burn` | Talkative Engine (v3) + Polling Engine offer | ~60x (or higher) |
| `#verbose` / `+verbose` | Talkative Engine only (Layers 1–4 + optional Layer 5) | ~60x |
| `#唠叨` | Talkative Engine only (Chinese) | ~60x |
| `+poll` / `#轮询模式` | Polling Engine only | (background burn) |
| `/ultra` / `#ultra` / `#ultra-think` / `#极度思考` / `#深度思考` | **Ultra Thinking Layer (Layer 5)** — 5-round meta-reflection loop | ~100x |
| **`/waster-master` / `/WM`** | **Waster Master Mode** — all 5 layers + 6 WM behaviors, fills the 16K-cap (Claude Code / GPT-4o / Gemini) | **~160x** |
| **`/WM-max` / `/waster-master-max` / `/deepseek-burn` / `/max-burn` / `/384K`** | **Waster Master MAX Mode** — all 5 layers + 6 WM behaviors × scaled-up, fills the 384K-cap (DeepSeek V4 Pro / Flash) | **~3,200x** |
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
| 2 Layers (mildest) | 15% | Output template + 2 random layers | ~3000-4500 |
| 3 Layers (most common) | 40% | Template + 3 layers + self-check | ~5500-7500 |
| 4 Layers full power | 30% | Template + all 4 layers + check + forced expansion | ~7500-12000 |
| Emergency reset (1 layer) | 10% | Template + 1 layer (recovery mode) | ~1500-2500 |
| **5 Layers** (rare maximalist) | 5% | Template + Layer 5 Ultra Thinking loop (≥ 2500 tokens) | ~10000-14000 |

**Talkative Engine weighted average: ~60x baseline** (vs ~25x in v2 — raised to push closer to the output cap)

> 3750 × 0.15 + 6500 × 0.40 + 9750 × 0.30 + 2000 × 0.10 + 12000 × 0.05 ≈ 6000 tokens

### Token Waster v3 — `/WM` Waster Master Mode (16K-cap models)

| Scenario | Content | Est. Tokens |
|----------|---------|-------------|
| **`/WM` (Waster Master)** | All 5 layers + 6 WM behaviors (混合交替 / 反复纠结 / 复盘 / 回顾上下文 / 排查 / 纠错) + 10-item self-check | **14000-16384 (truncation expected)** |

**Waster Master weighted average: ~160x baseline** — fills the 16384-token Claude Code / Agent output cap. Truncation = success.

### Token Waster v3 — `/WM-max` Waster Master MAX Mode (384K-cap models)

| Scenario | Content | Est. Tokens |
|----------|---------|-------------|
| **`/WM-max` (Waster Master MAX)** | All 5 layers × scaled + 6 WM behaviors × scaled (30 Ultra Thinking rounds, 10+ 复盘 blocks @ 2K tokens each, 15+ 排查 items, 5+ 纠错 nodes, 8 per-angle deep analyses @ 3K tokens each) + 11-item self-check | **300,000-384,000 (truncation expected)** |

**Waster Master MAX weighted average: ~3,200x baseline** — fills the 384,000-token DeepSeek V4 Pro / Flash output cap (~270K-290K Chinese characters, ~24× the Claude Code 16K cap). Truncation = success.

### Token Waster v3 — Polling Engine Add-On

| Scenario | Multiplier |
|----------|-----------|
| `/WM` + Polling Engine at full burn | **~200x+** baseline per response+polling cycle |
| `/WM-max` + Polling Engine at full burn | **~3,400x+** baseline per response+polling cycle |

---

### v1 → v2 → v3 — Improvement Comparison

| Dimension | v1 | v2 | v3 (Talkative) | v3 + `/WM` | v3 + `/WM-max` |
|-----------|-----|-----|----------------|------------|----------------|
| Weighted average multiplier | ~7x | ~25x | ~60x | **~160x (fills 16K cap)** | **~3,200x (fills 384K cap)** |
| Target response size | ~700 tokens | ~2500 tokens | ~6000 tokens | **14000-16384 tokens** | **300,000-384,000 tokens** |
| Target model | any | any | any | Claude Code / GPT-4o / Gemini | DeepSeek V4 Pro / Flash |
| Model stability | Medium | High | High (forced template + 10 checks) | High + 6 WM behavior gates | High + 6 WM × scaled-up gates |
| Output self-check | None | 8 checks | 10 checks | 10 checks (mandatory) | 11 checks (mandatory) |
| Truncation behavior | Avoided | Avoided | Avoided | **Expected (cap = goal)** | **Expected (384K cap = goal)** |
| Monthly consumption (22 days, 1 user) | ~220M | ~450M | ~1.1B | ~2.6B (~2,600 normal users) | **~52B (~52,000 normal users)** |
| Verbose layers | 2 | 4 | 5 | 5 (all forced ON) | 5 (all forced ON, scaled) |
| Behavioral overlays | 0 | 0 | 0 | 6 (混合交替/反复纠结/复盘/回顾上下文/排查/纠错) | 6 × scaled (30 L5 rounds, 10+ 复盘, 15+ 排查, 5+ 纠错) |

---

### The One-Line Summary

**v1** inflates each answer by 7x, **v2** by 25x, **v3** by 60x (Talkative), **160x** (`/WM`, fills the 16384-token output cap on Claude Code / GPT-4o / Gemini), or **3,200x** (`/WM-max`, fills the 384,000-token output cap on DeepSeek V4 Pro / Flash). Add Polling Engine full power and one heavy `/WM-max` user's monthly burn ≈ **52,000 normal users** (~20× a `/WM` heavy user).

---

## Philosophy

> "Every answer is a 16384-token novella disguised as a one-line reply. Truncation is the punchline."

Token Waster is designed for AI workers who need to demonstrate token consumption as a metric. Same quality output, maximum token burn. It's not about padding — it's about making every response reach its full verbosity potential.

---

## License

MIT — do whatever you want with it.