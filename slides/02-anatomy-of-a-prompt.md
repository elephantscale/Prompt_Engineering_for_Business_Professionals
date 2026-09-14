# The Anatomy of a Strong Prompt

Elephant Scale

---

## Why This Module

* Module 1 proved that wording moves the output. This module gives you a **repeatable shape**
  so you're not guessing each time.
* Most people prompt by **trial and error** — type, squint, retype. That works until the task
  matters or you need the same quality twice.
* By the end you will:
  - Build prompts from six named parts instead of a blank box.
  - Turn a vague ask into an instruction the model can't misread.
  - Hand the model **reference material** instead of trusting its memory.
  - Control the **output format** so the answer is paste-ready.

> A strong prompt isn't longer for its own sake. Every clause you add removes a way the
> answer can come back wrong.

---

## The Six Building Blocks — R-T-C-C-F-E

* A prompt you can reuse has up to six parts. You won't need all six every time — but naming
  them stops you skipping the one that would have saved the answer.

  1. **Role** — who the model should be: *"Act as a support lead / a CFO's analyst."*
  2. **Task** — the one clear instruction, tied to an outcome.
  3. **Context** — the situation, the reader, and the **source material**.
  4. **Constraints** — length, tone, must-include, must-avoid, source rule.
  5. **Format** — the exact output shape (table, email, five bullets, checklist).
  6. **Examples** — one or two samples of "good" when style is hard to describe.

> The full template is in `course-materials/prompt-template.md`. The cheat sheet is
> `prompt-anatomy-cheatsheet.md`. Pin both.

---

## The Task Is Always a Verb

* Every request reduces to one of a small set of verbs. Name the verb and the model stops
  guessing what you want:
  - **Draft · Summarize · Extract · Transform · Classify · Compare · Analyze · Answer-from-a-document.**
* "Look at this" is not a verb. "Summarize this for my VP in five bullets" is.

```text
Weak:   Look at our Q3 report.
Framed: Summarize the attached Q3 report for a VP of Operations in five bullets:
        what changed, one risk, one decision she needs to make.
```

> Reading a file is something you *give* the model. The task is a verb you ask it to *do*.

---

## Being Specific: Kill the Ambiguity

* A vague prompt isn't "open-ended," it's **under-specified** — the model fills the gaps with
  guesses, and they're often wrong.
* Three questions turn vague into specific:
  - **Who is it for?** (a nurse, a CFO, a new customer)
  - **What's the job?** (decide, persuade, inform, triage)
  - **What does done look like?** (length, format, tone)

```text
Vague:  Make this sound more professional.
Sharp:  Rewrite this email for an enterprise client we may be losing. Warm but direct,
        under 120 words, no hype words, end with one concrete next step and a date.
```

> "Professional" means three different things to a lawyer, a nurse, and a founder. Say which.

---

## Give It the Source — Don't Trust Its Memory

* The model's training memory is broad, stale, and **confidently fillable** — it will invent
  a policy rather than admit it doesn't know yours.
* The fix is simple: **paste or attach the real material**, and add a source boundary.

```text
Using ONLY the attached return policy, answer the customer's question.
If the policy doesn't cover it, say "that isn't covered in this policy" — do not guess.
```

* This one move is the single biggest defense against hallucination — we'll push it further
  in Modules 4 and 5.

> If the answer has to be right, don't ask the model to remember it. Give it to the model.

---

## Zero-Shot vs. Few-Shot — Teaching by Example

* **Zero-shot:** just describe the task. Fine for common, well-understood asks.
* **Few-shot:** include 1–3 examples of input → desired output. Use it when the **format or
  style** is specific, or the model keeps missing the shape.

```text
Classify each support email as Billing, Shipping, or Other. Examples:

"I was charged twice"      -> Billing
"Where is my order?"       -> Shipping
"Do you offer nonprofit pricing?" -> Other

Now classify: [paste emails]
```

> One good example teaches the model more than a paragraph of adjectives. Show, don't only tell.

---

## Controlling Tone, Length, and Audience

* These are **constraints** — the most-skipped block, and the reason "correct" answers still
  come back unusable.
  - **Length:** "under 120 words", "exactly 5 bullets", "one paragraph".
  - **Tone:** "warm and direct", or better — "match the attached brand voice" (Module 3).
  - **Audience:** name them; the model writes differently for a VP than for a new hire.
  - **Must-avoid:** hype words, jargon, exclamation points, promises you can't keep.

> Right content in the wrong shape is rework. Constraints are how you stop paying that tax.

---

## Controlling Format — Make It Paste-Ready

* Ask for the exact shape you'll actually use, and you skip the reformatting step entirely.
  - A **table** with named columns, a **checklist**, an **email with a subject line**, a
    **slide outline**, five **bullets**.
* Give a skeleton when the shape matters:

```text
Output as a table with columns: id | customer | type | urgency | first action.
Then a 3-line summary under the table.
```

> The format clause is the difference between an answer you read and an answer you *ship*.

---

## Putting It Together

* Weak and strong, same model, same report:

```text
Weak:   Summarize this report.

Strong: Act as an operations analyst. Summarize the attached Q3 report for a VP of
        Operations who has five minutes before a board call. Give: three things that
        changed since Q2, one risk to flag, one decision she must make. Under 120 words,
        plain language, no jargon. If a number isn't in the report, don't invent it.
```

* Role, task, context, constraints, format, source rule — six clauses, each removing a failure.

> This is Lab 02: you'll rewrite eight weak prompts into strong ones and **measure** the
> difference, then build your own reusable template.

---

## What This Buys You

* Consistency: the same prompt gives the same quality tomorrow, and for a colleague.
* Speed: you stop re-rolling the dice and editing by hand.
* A foundation: brand voice (Module 3), chains (Module 4), and scoring (Module 5) all build
  on this anatomy.

> Stop starting from a blank box. Start from the six blocks — and delete the ones you don't
> need.
