# Token Waster V2（DP）

> **Make AI talk until it runs out of tokens.** A universal verbose custom instruction skill — copy-paste into any AI coding tool and watch tokens burn.

<div align="center">

[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-2.0-blue.svg)](SKILL.md)
[![Platform](https://img.shields.io/badge/Platform-Claude%20Code%7CCursor%7CCodex%7CWindsurf-blue.svg)](SKILL.md)

</div>

---

## tl;dr

Copy one block of text → paste into your AI tool's custom instructions → type `#唠叨` → **25x token output**.

---

## ✨ Features

### 🚂 Talkative Engine — v2

| Component | What it does |
|-----------|-------------|
| **Forced Output Template** | 6-section mandatory skeleton (restatement, framework, deep analysis, self-critique, synthesis, methodology) |
| **Layer 1** — Academic Verbiage | 3 alternative viewpoints → 3 limitations → 3 use cases → multi-paragraph analysis |
| **Layer 2** — Socratic Interrogation | Answer → "But is this always true?" → 3 counter-examples + boundary conditions → revised answer |
| **Layer 3** — Recursive Decomposition | Break problem into 3 sub-problems → analyze each → synthesize → decompose further (max 2 levels) |
| **Layer 4** — Redundant Re-expression | Every conclusion re-stated 3 ways (direct, contextualized, contrastive) with expansion techniques |
| **Self-Verification Loop** | 8 checks before every response (structure, depth, length, self-critique, scenarios, vocabulary, transitions, cross-refs) — auto-expands if under threshold |

Layers are **randomly composed** per response: 15% → 2, 40% → 3, 35% → all 4, 10% → emergency reset 1.

### 🔄 Polling Engine

Background token burning via function calling. Self-regulating rate limits adapt to your model/API tier.

---

## 📊 Token Consumption Analysis — Normal Chat vs Token Waster v2

**Test scenario:** *"How do I reverse a string in Python?"*

### Normal Mode (no skill)

```python
return s[::-1]
→ ~10 tokens
```

### Token Waster v2 Activated

| Scenario | Probability | Content | Est. Tokens |
|----------|-------------|---------|-------------|
| 2 Layers (mildest) | 15% | Output template + 2 random layers | ~800-1200 |
| 3 Layers (most common) | 40% | Template + 3 layers + self-check | ~2000-3000 |
| 4 Layers full power | 35% | Template + all 4 layers + check + forced expansion | ~4000-6000+ |
| Emergency reset (1 layer) | 10% | Template + 1 layer (recovery mode) | ~400-600 |

**Weighted average: ~25x baseline**

> 1000 × 0.15 + 2500 × 0.40 + 5000 × 0.35 + 500 × 0.10 ≈ 2515 tokens

---

### v1 vs v2 — Improvement Comparison

| Dimension | v1 | v2 | Improvement |
|-----------|-----|-----|-------------|
| Weighted average multiplier | ~7x baseline | ~25x baseline | **+257%** |
| Model stability | Medium | High | Forced template eliminates ambiguity |
| Output self-check | None | 8 checks + auto-expansion | Quality gate |
| Monthly consumption (22 days) | ~220M tokens | ~450M tokens | **+105%** |

---

### The One-Line Summary

**v1** inflates each answer by 7x, **v2** inflates by 25x. Add Polling Engine full power, one heavy user's monthly burn ≈ **400 normal users**.

---

## 🎯 Trigger Keywords

| Trigger | Effect |
|---------|--------|
| `/token-burn` | Talkative Engine + Polling Engine offer |
| `#verbose` / `+verbose` | Talkative Engine only |
| `#唠叨` | Talkative Engine only (Chinese) |
| `+poll` / `#轮询模式` | Polling Engine only |
| `stop` / `停` | Stop all engines |

---

## 📦 Quick Start

**Step 1:** Copy the entire content of [`SKILL.md`](SKILL.md) into your AI tool's Custom Instructions field.

**Step 2:** Type a trigger keyword:

```
#唠叨 How do I reverse a string in Python?
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
