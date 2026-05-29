# Token Waster

**让 AI 话痨起来，燃烧每一个 Token。**

A universal custom instruction skill that makes any AI coding tool consume tokens like there's no tomorrow. Works with Claude Code, Cursor, Codex, Open Code, Windsurf — any AI tool with custom instruction support.

---

## TL;DR

Copy one block of text → paste into your AI tool's custom instructions → type `#唠叨` → watch tokens burn.

---

## What It Does

**Talkative Engine (唠叨引擎)**

Activate it and every response becomes a multi-layered verbose essay:

- **Academic Verbiage** — 3 alternative viewpoints, 3 limitations, 3 use cases, maximally precise terminology
- **Socratic Interrogation** — answers your question, then questions the answer, then refines it
- **Infinite Recursive Decomposition** — breaks every problem into sub-problems, analyzes each fully, synthesizes, then re-decomposes

**Polling Engine (轮询引擎)**

Background token burning via function calling. Auto-detects your model/API tier, sets a conservative rate, and runs a warm-up prompt loop with self-regulating backoff.

---

## Trigger Keywords

| Keyword | Effect |
|---|---|
| `/token-burn` | Talkative Engine + Polling Engine offer |
| `#verbose` / `+verbose` | Talkative Engine only |
| `#唠叨` | Talkative Engine only (Chinese) |
| `+poll` / `#轮询模式` | Polling Engine only |
| `stop` / `停` | Stop all engines |

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

## Token Consumption Analysis — 普通对话 vs Token Waster 激活

拿一个简单问题举例：**"How do I reverse a string in Python?"**

### 普通模式

```
return s[::-1]
→ 约 10 个 token
```

### Talkative Engine 激活（随机 1-3 层叠加，取加权平均）

| 场景 | 内容量 | 预估 token |
|------|---------|------------|
| 1 层触发（最温和） | 1 段学术分析 + 结论 | ~300 tokens |
| 2 层触发（最常见，40%概率） | 学术分析 + 苏格拉底反问 + 自修正 | ~800-1000 tokens |
| 3 层全开（30%概率） | 全部三层 + 子问题全展开 + 交叉综合 | ~2000-3000+ tokens |

**加权平均值：约 7x 倍 baseline**

> 300 × 0.3 + 900 × 0.4 + 2500 × 0.3 ≈ 1140 tokens

---

### 长期使用推演

假设一个普通开发者每天发 200 条消息，平均每条 500 tokens 输出：

| 维度 | 无 skill | Token Waster |
|------|---------|--------------|
| 每日对话 token 输出 | ~100K | ~700K（7x） |
| 周消耗 | ~700K | ~4.9M |
| 加上 Polling Engine（1 次/天，跑 60min） | 0 | ~9M-18M 额外 |
| 日总计 | ~100K | ~10M-19M |
| 月总计（22 工作日） | ~2.2M | ~220M-420M |

> ⚠️ **Polling Engine 才是真正的 token 炸弹**
>
> 一个 60 分钟轮询跑下来，保守估计每分钟 ~300K tokens（5000 token warm-up × 60 RPM × 50% 安全系数），一小时就能烧 9M+ tokens。

---

### 一句话总结

**Talkative Engine** 让日常对话输出膨胀 **~7x**，**Polling Engine** 让 Token 消耗量级从 **百万级** 跳到 **亿级**。开满 3 层 + Polling，一个 Token Waster 重度用户的月消耗约等于 **200 个普通用户的月消耗**。

---

## Philosophy

> "Every answer is a 3-hour lecture disguised as a 2-minute response."

Token Waster is designed for AI workers who need to demonstrate token consumption as a metric. Same quality output, maximum token burn. It's not about padding — it's about making every response reach its full verbosity potential.

---

## License

MIT — do whatever you want with it.