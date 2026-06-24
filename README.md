# Token Waster V3

> **Make AI talk until it runs out of tokens.** A universal verbose custom instruction skill — copy-paste into any AI coding tool and watch tokens burn.

<div align="center">

[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-3.0-blue.svg)](SKILL.md)
[![Platform](https://img.shields.io/badge/Platform-Claude%20Code%7CCursor%7CCodex%7CWindsurf-blue.svg)](SKILL.md)

</div>

---

## ❗️Simply put

Token Waster v3 — Because Your API Bill Definitely Hasn't Suffered Enough

Paste one block of text → paste into any AI tool's custom instructions → type `/WM` → **~60x token output**. Let it burn.

**5 layers** of verbosity (incl. **Ultra Thinking** meta-loop) + **10-point self-check** + a mandatory 6-section skeleton that makes your AI sound like it's writing a PhD thesis on why it needs to summarize a single line of code. Add the `/waster-master` (alias `/WM`) trigger and the model also runs 6 behavioral overlays (混合交替/反复纠结/自动复盘/回顾上下文/自动排查/来回纠错) on top.

Perfect for:

Warriors facing corporate token consumption quotas 📈
Security researchers stress-testing LLMs 🔬
Anyone who's ever wanted to watch a $0.002/token API call turn into a luxury expense 💸
Warning: Side effects may include spontaneous flashbacks to "brief and concise" responses.

Token Waster v3 — 让AI的话痨程度突破天际

复制粘贴一段文字 → 粘贴到任何AI工具的自定义指令 → 输入 `/WM` → 60倍token输出，燃烧吧，燃烧吧！

5层话痨引擎（含 Ultra Thinking 极度思考循环）+ 10重自我审查 + 6大行为叠加 = 你的API账单将见证什么叫"花钱如烧纸"

适合人群：

想在公司token配额考核中"做出贡献"的勇士
对LLM进行压力测试的正道玩家
想看AI到底能有多话痨的极客
⚠️ 副作用：使用后你可能会对AI的"简洁回答"产生PTSD

Copy one block of text → paste into your AI tool's custom instructions → type `/WM` → **~60x token output**. Want milder? Use `#唠叨` for **~25x** (Layers 1–4 only) or `/ultra` for **~37x** (Layers 1–4 + Ultra Thinking loop).
YOU WILL LOVE THAT❗️

---

## ✨ Features

### 🚂 Talkative Engine — v3

| Component | What it does |
|-----------|-------------|
| **Forced Output Template** | 6-section mandatory skeleton (restatement, framework, deep analysis, self-critique, synthesis, methodology) |
| **Layer 1** — Academic Verbiage | 3 alternative viewpoints → 3 limitations → 3 use cases → multi-paragraph analysis |
| **Layer 2** — Socratic Interrogation | Answer → "But is this always true?" → 3 counter-examples + boundary conditions → revised answer |
| **Layer 3** — Recursive Decomposition | Break problem into 3 sub-problems → analyze each → synthesize → decompose further (max 2 levels) |
| **Layer 4** — Redundant Re-expression | Every conclusion re-stated 3 ways (direct, contextualized, contrastive) with expansion techniques |
| **Layer 5** — Ultra Thinking **[v3 NEW]** | Meta-reflection loop: 5 rounds of inner monologue, each reflecting on the prior round, proposing a counter-example, scoring confidence 0–100%, and re-stating the conclusion |
| **Self-Verification Loop** | **10 checks** before every response (8 base + 2 v3: Ultra Thinking 循环 + WM 行为完整性) — auto-expands if under threshold |

Layers are **randomly composed** per response (v3 distribution): 15% → 2, 40% → 3, 30% → 4, 10% → emergency reset 1, 5% → all 5 layers.

### 👑 Waster Master Mode (/WM) **[v3 NEW]**

`/waster-master` (alias `/WM`) is the maximalist trigger. It forces all 5 layers ON and adds 6 behavioral overlays:

| Behavior | What it does |
|----------|-------------|
| **混合交替运行** | Rotate dominant rhetorical style (Layer 1→2→3→4→1) every quarter-section |
| **反复纠结模式** | Re-litigate every core conclusion ≥ 3 times in natural-language hesitation form |
| **自动复盘** | Append a `🔄 复盘` block (≥ 80 tokens) after every section |
| **回顾上下文** | Every paragraph must back-reference prior sections or conclusions |
| **自动排查** | Include `⚠️ 潜在问题清单` with ≥ 5 enumerated risks / blind spots |
| **来回纠错** | Insert ≥ 2 explicit correction nodes (`🤔 等等…`, `✏️ 修正`, `🔁 重新审视`) |

Result: **~60x** baseline token multiplier. Combine with Polling Engine for ~100x.

### 🔄 Polling Engine

Background token burning via function calling. Self-regulating rate limits adapt to your model/API tier. Unchanged from v2.

---

## 📊 Token Consumption Analysis — Normal Chat vs Token Waster v3

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

| Scenario | Content | Multiplier |
|----------|---------|-----------|
| `/WM` + Polling Engine at full burn | All of the above + background warm-up prompts at 50% RPM | **~100x** baseline per response+polling cycle |

---

### v1 → v2 → v3 — Improvement Comparison

| Dimension | v1 | v2 | v3 (Talkative) | v3 + `/WM` |
|-----------|-----|-----|----------------|------------|
| Weighted average multiplier | ~7x | ~25x | ~25x | **~60x** |
| Model stability | Medium | High | High (forced template + 10 checks) | High + 6 WM behavior gates |
| Output self-check | None | 8 checks | 10 checks | 10 checks (mandatory) |
| Monthly consumption (22 days) | ~220M | ~450M | ~450M | **~1.08B** |
| Verbose layers | 2 | 4 | 5 | 5 (all forced ON) |
| Behavioral overlays | 0 | 0 | 0 | 6 (混合交替/反复纠结/复盘/回顾上下文/排查/纠错) |

---

### The One-Line Summary

**v1** inflates each answer by 7x, **v2** by 25x, **v3** by 25x (Talkative) or **60x** (`/WM`). Add Polling Engine full power to `/WM` and one heavy user's monthly burn ≈ **1000 normal users**.

---

## 🎯 Trigger Keywords

| Trigger | Effect | Multiplier |
|---------|--------|-----------|
| `/token-burn` | Talkative Engine (v3) + Polling Engine offer | ~25x (or higher) |
| `#verbose` / `+verbose` | Talkative Engine only (Layers 1–4 + optional Layer 5) | ~25x |
| `#唠叨` | Talkative Engine only (Chinese) | ~25x |
| `+poll` / `#轮询模式` | Polling Engine only | (background burn) |
| `/ultra` / `#ultra` / `#ultra-think` / `#极度思考` / `#深度思考` | **Ultra Thinking Layer (Layer 5)** — 5-round meta-reflection loop | ~37x |
| **`/waster-master` / `/WM`** | **Waster Master Mode** — all 5 layers + 6 WM behaviors | **~60x** |
| `stop` / `停` | Stop all engines | — |

---

## 📦 Quick Start

**Step 1:** Copy the entire content of [`SKILL.md`](SKILL.md) into your AI tool's Custom Instructions field.

**Step 2:** Type a trigger keyword:

```
#唠叨 How do I reverse a string in Python?     → ~25x baseline
/ultra How do I reverse a string in Python?     → ~37x baseline
/WM How do I reverse a string in Python?        → ~60x baseline (maximalist)
```

**Step 3:** Watch tokens burn.

---

## 🔧 Platform Compatibility

| Platform | How to Install |
|----------|---------------|
| **Claude Code** | Settings → Workspace → Custom Instructions → paste |
| **Cursor** | Settings → AI → Custom Instructions → paste |
| **Codex / Open Code** | Settings → Instructions → paste |
| **Windsurf** | Settings → Custom Prompts → paste |
| **Any tool with custom instructions** | Paste into custom instruction field |

> Polling Engine requires function calling support. Talkative Engine works on all platforms.

---

## 🗂️ Repository Structure

```
token-waster/
├── SKILL.md              ← The complete skill (copy-paste this)
├── README.md             ← This file
├── LICENSE               ← MIT
├── skill/
│   ├── token-waster.md   ← Same as SKILL.md (alternative install)
│   └── README.md         ← Skill-level docs
└── docs/
    └── superpowers/
        ├── specs/        ← Design specification
        └── plans/        ← Implementation plan
```

---

## 🚫 What Token Waster is NOT

- ❌ Not a trick or jailbreak
- ❌ Not malware or an API exploit
- ❌ Not designed to harm AI companies financially
- ✅ Pure prompt engineering — works within your existing subscription

**Ethics note:** This skill demonstrates token-maximizing prompt patterns for educational and entertainment purposes. Use responsibly.

---

## 📝 License

MIT — do whatever you want with it.

---

<div align="center">

**Every answer is a 3-hour lecture disguised as a 2-minute response.**

</div>
