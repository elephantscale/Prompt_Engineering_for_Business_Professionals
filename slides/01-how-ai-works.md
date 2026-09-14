# How Modern AI Assistants Actually Work

Elephant Scale

---

## Why This Module

* You can't steer a tool you don't understand. Before we write prompts, a practical mental
  model of what's happening behind the chat box.
* We skip the math. You need just enough to **predict** how the assistant will behave.
* By the end you will:
  - Say, in plain language, what a large language model actually does.
  - Explain tokens, context window, temperature, and hallucination — without jargon.
  - Know when to reach for a **fast** model vs. a **reasoning** model.
  - Choose deliberately between Claude, ChatGPT, and Gemini for a given job.
  - Understand *why* the prompt is the steering wheel.

> The goal isn't to turn you into an engineer. It's to stop the assistant from surprising
> you.

---

## What a Language Model Actually Does

* Strip away the chat interface and it does one thing: **predict the next word**, over and
  over, given everything so far.
  - It has read a staggering amount of text and learned the patterns of how language fits
    together.
  - Your prompt + the conversation so far is the "everything so far." It continues the most
    likely useful text.
* This one fact explains almost all of its behavior:
  - It's astonishingly fluent — fluency is exactly what it was trained for.
  - It can be **confidently wrong** — a plausible-sounding next word isn't always a true one.
  - It has **no database to look things up in** unless you give it one (a file, a search tool).

> It is a pattern-completion engine, not a fact-retrieval engine. Treat fluent output as a
> *draft to verify*, not an answer to trust.

---

## The Overconfident Junior Colleague

* The most useful mental model in this course: the assistant is a **sharp, fast, slightly
  overconfident junior colleague**.
  - Brilliant at drafting, reformatting, summarizing, explaining itself.
  - Will occasionally state something wrong with total confidence — and won't flag it unless
    asked.
* How you'd manage that colleague is exactly how you prompt:
  - Give **clear direction** (what, for whom, in what form).
  - Hand over the **source material** instead of asking from memory.
  - **Review** the work against your intent.
  - Ask the **catch-the-mistake** follow-up.

> You already know how to get good work out of a talented junior. Prompting is that skill,
> typed.

---

## Key Terms Without the Jargon

* **Model** — the specific "brain" you're talking to (Claude Opus, GPT-5, Gemini). Newer and
  larger generally means more capable, slower, pricier.
* **Token** — the chunk the model reads and writes in. Roughly ¾ of a word. "Prompt
  engineering" is about 4 tokens. You rarely count them — but limits are measured in them.
* **Context window** — the model's short-term memory: how much (prompt + attachments +
  conversation) it can hold at once, measured in tokens.
  - Today's windows are huge — a whole report fits. But it is **not permanent memory**; a new
    chat starts blank.
* **Temperature** — a creativity dial. Low = focused and repeatable; high = varied and
  surprising. Most assistants hide it; it's why you get different answers to the same prompt.
* **Hallucination** — when the model states something false as if it were true. Not lying —
  it's pattern-completion producing a plausible-but-wrong next word.

> None of these require math. They each predict a behavior you'll see in the labs.

---

## Why the Same Question Gives Different Answers

* Ask the identical question twice, get two different answers. That surprises people. Here's
  why:
  - **Temperature** — a bit of deliberate randomness in word choice.
  - **Memory / custom instructions** — saved settings quietly reshape the output.
  - **Model version** — vendors update models continuously; yesterday's answer isn't
    promised today.
* This is why every **comparison** in this course starts with a clean slate:
  - Use a **new or temporary chat**, memory and custom instructions off.
  - Otherwise you're comparing your saved settings, not the prompt or the tool.

> "We ran the same prompt and got different answers" is the #1 source of confusion. Control
> the variables and it disappears.

---

## Reasoning Models vs. Fast Models

* Every major assistant now offers (at least) two speeds:
  - **Fast model** — answers immediately. Great for drafting, rewriting, quick summaries,
    high-volume simple tasks.
  - **Reasoning / "thinking" model** — pauses to work through steps before answering. Slower,
    costs more, noticeably better when a wrong *intermediate* step would ruin the result.
* Rule of thumb:
  - Draft an email, tidy some notes → **fast**.
  - Compare three vendor contracts, analyze a dataset, plan a multi-step process → **reasoning**.

```text
Fast is the default. Switch to reasoning the moment the task has
steps where being wrong halfway through wrecks the whole answer.
```

> Using a reasoning model for "rewrite this sentence" just wastes time. Using a fast model
> for a careful analysis invites a confident mistake. Match the model to the stakes. (Full
> table in the anatomy cheat sheet.)

---

## The 2026 Assistant Landscape

* Three frontier assistants dominate business use. They overlap enormously — any handles
  ~80% of daily work well. Differences show at the **edges**.
  - **Claude (Anthropic)** — standout at writing, careful long-document reading, following
    complex multi-part instructions; tends to **flag its own uncertainty**. Projects hold
    reusable context.
  - **ChatGPT (OpenAI)** — broadest feature surface: data analysis, image generation, a huge
    Custom GPT catalog, voice, connectors. The swiss-army default for mixed work.
  - **Gemini (Google)** — fits where work already lives in Google Workspace; very large
    context window; strong multimodal.
* In this class you each have **your own account** on one of these. Examples lead with Claude
  and note the others' equivalents.

> No assistant is best at everything, and rankings shift with every release. Treat any "X is
> the smartest" claim — this slide included — as perishable.

---

## How to Actually Choose

* Don't argue "better" in the abstract. Run the real task through a checklist:
  - Accepts the **file type** you have (PDF, CSV, image)?
  - Keeps the **source boundary** — answers from your material, not its training?
  - Produces the **exact output format** you asked for?
  - **Flags uncertainty** instead of bluffing?
  - **Enterprise policy** allows this data in this tool?
* Two practical questions usually settle it:
  - **Where does your work already live?** (Google Workspace → Gemini; Microsoft 365 →
    Copilot; mixed → ChatGPT or Claude.)
  - **What does your plan actually include?** Features depend on plan, admin settings, and
    region.

> Best assistant = usable output *safely in your environment*, not the leaderboard winner.

---

## The Prompt Is the Steering Wheel

* Same model, same question — a small wording change produces a large output change.

```text
Weak:   Summarize this report.

Framed: Summarize the attached quarterly report for a VP of Operations who has five
        minutes before a board call. Give the three things that changed since last
        quarter, one risk to flag, and one decision she must make. Under 120 words,
        plain language.
```

* The model didn't get smarter between those two prompts. You gave it a **direction to
  steer toward**: audience, job, content focus, length.
* That's the whole course in one slide. Module 2 turns this into a repeatable **anatomy**.

> You are not "asking a question." You are **aiming** a very capable, slightly unreliable
> tool. Aim it well and it's transformative. Aim it vaguely and you get generic mush.

---

## Common Myths That Lead to Poor Results

* **"It knows everything / it's connected to the internet."** Only if it has a search tool
  *and* you asked it to use it. By default it works from training + what you provide.
* **"If it sounds confident, it's right."** Confidence is a writing style, not a truth
  signal. Fluent ≠ correct.
* **"A longer prompt is a worse prompt."** Usually the opposite — more *relevant* context
  beats a terse ask almost every time. Clear isn't short.
* **"It remembers everything I told it."** Only within the context window / saved memory. A
  fresh chat is a blank slate.
* **"The first answer is the answer."** It's a draft you're reviewing. The skill is the
  follow-up.

> Half of getting great results is discarding these five beliefs.

---

## Where AI Adds Value in Your Role — and Where It Doesn't

* **Great fit:** drafting, summarizing, reformatting, brainstorming, extracting structure
  from messy text, first-pass analysis, explaining jargon.
* **Handle with care / verify:** facts, figures, names, citations, anything legal, medical,
  financial, or compliance-related.
* **Keep a human:** final judgment calls, anything irreversible, anything where being wrong
  is expensive, and anything involving confidential or regulated data in a public tool.

> Module review: name one task in your week where an assistant clearly helps — and one where
> it clearly shouldn't be trusted alone. We test the first one in the lab.

---

## To the Lab

* You'll take **one** business request and run it **three ways**, changing exactly one thing
  each time:
  1. **Phrasing** — vague ask vs. framed ask.
  2. **Context** — no source vs. the attached report.
  3. **Model** — fast vs. reasoning.
* Then you'll name **which single change moved the output the most**. (Spoiler: it's usually
  not the one people expect.)

> One variable at a time. That discipline is what turns "AI is hit or miss" into "I can
> predict what I'll get."
