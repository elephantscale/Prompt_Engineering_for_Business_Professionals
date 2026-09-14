# How Modern AI Assistants Actually Work

Elephant Scale

---

## Why This Module

* Can't steer a tool you don't understand — a practical mental model first.
* We skip the math — just enough to **predict** the assistant's behavior.
* By the end you can:
  - Say in plain language what an LLM actually does.
  - Explain **tokens, context window, temperature, hallucination** — no jargon.
  - Pick a **fast** vs. a **reasoning** model on purpose.
  - Choose deliberately between Claude, ChatGPT, Gemini.
  - See *why* the prompt is the steering wheel.

> The goal isn't to make you an engineer. It's to stop the assistant surprising you.

---

## What a Language Model Actually Does

* One job: **predict the next word**, over and over, given everything so far.
  - Trained on a staggering amount of text — learned the patterns of language.
  - Your prompt + the chat so far = "everything so far." It continues it.
* This one fact explains almost all its behavior:
  - **Astonishingly fluent** — fluency is what it was trained for.
  - **Confidently wrong** — plausible ≠ true.
  - **No database to look in** — unless you give it one (file, search tool).

> A pattern-completion engine, not a fact-retrieval engine. Fluent output = a draft to verify.

---

## The Overconfident Junior Colleague

* Best mental model: a **sharp, fast, slightly overconfident junior colleague**.
  - Brilliant at drafting, reformatting, summarizing, explaining itself.
  - Occasionally wrong with total confidence — and won't flag it unless asked.
* Manage that colleague exactly how you prompt:
  - **Clear direction** — what, for whom, in what form.
  - **Hand over the source** — don't ask from memory.
  - **Review** against your intent.
  - Ask the **catch-the-mistake** follow-up.

> You already know how to get good work out of a talented junior. Prompting is that skill, typed.

---

## Key Terms Without the Jargon

* **Model** — the specific "brain" (Claude Opus, GPT-5, Gemini). Newer/larger = more capable, slower, pricier.
* **Token** — the chunk it reads and writes in. ~¾ of a word. Limits are measured in these.
* **Context window** — its short-term memory: prompt + attachments + conversation, in tokens.
  - Huge today — a whole report fits. But **not permanent** — a new chat starts blank.
* **Temperature** — a creativity dial. Low = focused/repeatable, high = varied. Usually hidden.
* **Hallucination** — states something false as true. Not lying — pattern-completion gone wrong.

> No math here. Each term predicts a behavior you'll see in the labs.

---

## Why the Same Question Gives Different Answers

* Same question twice, two different answers. Why:
  - **Temperature** — deliberate randomness in word choice.
  - **Memory / custom instructions** — saved settings quietly reshape output.
  - **Model version** — vendors update continuously; yesterday's answer isn't promised.
* So every **comparison** in this course starts from a clean slate:
  - **New or temporary chat**, memory and custom instructions off.
  - Otherwise you're comparing your settings, not the prompt or tool.

> "Same prompt, different answers" is the #1 confusion. Control the variables and it vanishes.

---

## Reasoning Models vs. Fast Models

* Every major assistant offers (at least) two speeds:
  - **Fast** — answers immediately. Drafting, rewriting, quick summaries, high-volume simple tasks.
  - **Reasoning / "thinking"** — works through steps first. Slower, pricier, better when a wrong *middle* step ruins the result.
* Rule of thumb:
  - Draft an email, tidy notes → **fast**.
  - Compare three contracts, analyze a dataset, plan a multi-step process → **reasoning**.

```text
Fast is the default. Switch to reasoning the moment the task has
steps where being wrong halfway through wrecks the whole answer.
```

> Reasoning for "rewrite this sentence" wastes time. Fast for careful analysis invites a confident mistake. Match the model to the stakes.

---

## The 2026 Assistant Landscape

* Three frontier assistants dominate business use. Huge overlap — any handles ~80% of daily work. Differences show at the **edges**.
  - **Claude (Anthropic)** — writing, careful long-document reading, complex multi-part instructions; **flags its own uncertainty**. Projects hold reusable context.
  - **ChatGPT (OpenAI)** — broadest surface: data analysis, image gen, Custom GPTs, voice, connectors. The swiss-army default.
  - **Gemini (Google)** — fits Google Workspace; very large context window; strong multimodal.
* In class you each have **your own account** on one. Examples lead with Claude, note the others.

> No assistant is best at everything, and rankings shift every release. Treat any "X is smartest" claim as perishable.

---

## How to Actually Choose

* Don't argue "better" in the abstract — run the real task through a checklist:
  - Accepts your **file type** (PDF, CSV, image)?
  - Keeps the **source boundary** — your material, not its training?
  - Produces the **exact output format** asked for?
  - **Flags uncertainty** instead of bluffing?
  - **Enterprise policy** allows this data in this tool?
* Two questions usually settle it:
  - **Where does your work already live?** (Workspace → Gemini; Microsoft 365 → Copilot; mixed → ChatGPT or Claude.)
  - **What does your plan actually include?** Features depend on plan, admin, region.

> Best assistant = usable output *safely in your environment*, not the leaderboard winner.

---

## The Prompt Is the Steering Wheel

* Same model, same question — small wording change, large output change.

```text
Weak:   Summarize this report.

Framed: Summarize the attached quarterly report for a VP of Operations who has five
        minutes before a board call. Give the three things that changed since last
        quarter, one risk to flag, and one decision she must make. Under 120 words,
        plain language.
```

* The model didn't get smarter. You gave it a **direction to steer toward**: audience, job, focus, length.
* That's the whole course in one slide. Module 2 makes it a repeatable **anatomy**.

> You're not "asking a question." You're **aiming** a capable, slightly unreliable tool. Aim it well → transformative. Aim it vaguely → generic mush.

---

## Common Myths That Lead to Poor Results

* **"It knows everything / it's on the internet."** Only with a search tool *and* your ask to use it. Default = training + what you provide.
* **"Sounds confident, so it's right."** Confidence is a writing style, not a truth signal.
* **"A longer prompt is worse."** Usually the opposite — relevant context beats a terse ask. Clear isn't short.
* **"It remembers everything I told it."** Only within the context window / saved memory. Fresh chat = blank slate.
* **"The first answer is the answer."** It's a draft. The skill is the follow-up.

> Half of getting great results is discarding these five beliefs.

---

## Where AI Adds Value in Your Role — and Where It Doesn't

* **Great fit:** drafting, summarizing, reformatting, brainstorming, extracting structure from messy text, first-pass analysis, explaining jargon.
* **Handle with care / verify:** facts, figures, names, citations — anything legal, medical, financial, compliance.
* **Keep a human:** final judgment, anything irreversible, anything expensive-if-wrong, confidential or regulated data in a public tool.

> Name one task in your week where an assistant clearly helps — and one where it shouldn't be trusted alone. We test the first in the lab.

---

## To the Lab

* Take **one** business request, run it **three ways**, changing exactly one thing each time:
  1. **Phrasing** — vague vs. framed.
  2. **Context** — no source vs. the attached report.
  3. **Model** — fast vs. reasoning.
* Then name **which single change moved the output most**. (Usually not the one people expect.)

> One variable at a time. That discipline turns "AI is hit or miss" into "I can predict what I'll get."
