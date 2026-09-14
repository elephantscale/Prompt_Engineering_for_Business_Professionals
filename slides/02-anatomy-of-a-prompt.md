# The Anatomy of a Strong Prompt

Elephant Scale

---

## Why This Module

* Module 1 proved wording moves the output. Now: a **repeatable shape**, not guesswork.
* Most people prompt by **trial and error** — type, squint, retype. Fails when it matters or you need the same quality twice.
* By the end you can:
  - Build prompts from six named parts, not a blank box.
  - Turn a vague ask into an instruction the model can't misread.
  - Hand over **reference material** instead of trusting its memory.
  - Control the **output format** so the answer is paste-ready.

> A strong prompt isn't longer for its own sake. Each clause removes a way the answer comes back wrong.

---

## The Six Building Blocks — R-T-C-C-F-E

* Up to six parts. You won't need all six every time — but naming them stops you skipping the one that saves the answer.

  1. **Role** — who the model should be: *"Act as a support lead / a CFO's analyst."*
  2. **Task** — one clear instruction, tied to an outcome.
  3. **Context** — the situation, the reader, the **source material**.
  4. **Constraints** — length, tone, must-include, must-avoid, source rule.
  5. **Format** — exact output shape (table, email, five bullets, checklist).
  6. **Examples** — one or two samples of "good" when style is hard to describe.

> Full template: `course-materials/prompt-template.md`. Cheat sheet: `prompt-anatomy-cheatsheet.md`. Pin both.

---

## The Task Is Always a Verb

* Every request is one of a small set of verbs. Name the verb, the model stops guessing:
  - **Draft · Summarize · Extract · Transform · Classify · Compare · Analyze · Answer-from-a-document.**
* "Look at this" is not a verb. "Summarize this for my VP in five bullets" is.

```text
Weak:   Look at our Q3 report.
Framed: Summarize the attached Q3 report for a VP of Operations in five bullets:
        what changed, one risk, one decision she needs to make.
```

> Reading a file is what you *give* the model. The task is a verb you ask it to *do*.

---

## Being Specific: Kill the Ambiguity

* A vague prompt isn't "open-ended" — it's **under-specified**. The model fills gaps with guesses, often wrong.
* Three questions turn vague into specific:
  - **Who is it for?** (a nurse, a CFO, a new customer)
  - **What's the job?** (decide, persuade, inform, triage)
  - **What does done look like?** (length, format, tone)

```text
Vague:  Make this sound more professional.
Sharp:  Rewrite this email for an enterprise client we may be losing. Warm but direct,
        under 120 words, no hype words, end with one concrete next step and a date.
```

> "Professional" means three different things to a lawyer, a nurse, a founder. Say which.

---

## Give It the Source — Don't Trust Its Memory

* Training memory is broad, stale, and **confidently fillable** — it'll invent a policy rather than admit it doesn't know yours.
* Fix: **paste or attach the real material**, add a source boundary.

```text
Using ONLY the attached return policy, answer the customer's question.
If the policy doesn't cover it, say "that isn't covered in this policy" — do not guess.
```

* The single biggest defense against hallucination — pushed further in Modules 4 and 5.

> If the answer has to be right, don't ask the model to remember it. Give it to the model.

---

## Zero-Shot vs. Few-Shot — Teaching by Example

* **Zero-shot:** just describe the task. Fine for common, well-understood asks.
* **Few-shot:** include 1–3 input → output examples. Use when **format or style** is specific, or the model keeps missing the shape.

```text
Classify each support email as Billing, Shipping, or Other. Examples:

"I was charged twice"      -> Billing
"Where is my order?"       -> Shipping
"Do you offer nonprofit pricing?" -> Other

Now classify: [paste emails]
```

> One good example teaches more than a paragraph of adjectives. Show, don't only tell.

---

## Controlling Tone, Length, and Audience

* These are **constraints** — the most-skipped block, and why "correct" answers still come back unusable.
  - **Length:** "under 120 words", "exactly 5 bullets", "one paragraph".
  - **Tone:** "warm and direct" — or better, "match the attached brand voice" (Module 3).
  - **Audience:** name them. A VP reads differently than a new hire.
  - **Must-avoid:** hype words, jargon, exclamation points, promises you can't keep.

> Right content in the wrong shape is rework. Constraints stop you paying that tax.

---

## Controlling Format — Make It Paste-Ready

* Ask for the exact shape you'll use, skip the reformatting step:
  - A **table** with named columns, a **checklist**, an **email with a subject line**, a **slide outline**, five **bullets**.
* Give a skeleton when the shape matters:

```text
Output as a table with columns: id | customer | type | urgency | first action.
Then a 3-line summary under the table.
```

> The format clause is the difference between an answer you read and one you *ship*.

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

> Lab 02: rewrite eight weak prompts into strong ones, **measure** the difference, build your own reusable template.

---

## What This Buys You

* **Consistency** — same prompt, same quality tomorrow and for a colleague.
* **Speed** — stop re-rolling the dice and editing by hand.
* **A foundation** — brand voice (Mod 3), chains (Mod 4), scoring (Mod 5) all build on this anatomy.

> Stop starting from a blank box. Start from the six blocks — and delete the ones you don't need.
