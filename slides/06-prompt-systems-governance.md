# Building & Governing Prompt Systems

Elephant Scale

---

## Why This Module

* A great prompt typed once and lost is a **party trick**. One your whole team can run is an **asset**.
* This module turns your prompts into a **system**: named, documented, versioned, shared, governed.
* By the end you can:
  - Package a winning prompt so someone else gets the **same result**.
  - **Version** prompts — improve without losing what worked.
  - Save a prompt as a reusable assistant — a **Custom GPT / Project / Gem**.
  - Apply **responsible-use** rules and know the tasks where the answer is "don't use AI."

> The skill isn't writing one brilliant prompt. It's making good prompts **repeatable**.

---

## From Lucky Prompt to Reliable Asset

* The lifecycle of a prompt that matters:
  1. **Draft** — get it working for you.
  2. **Document** — what it's for, inputs, the review step.
  3. **Version** — give it a number; keep a changelog.
  4. **Review** — someone else runs it and scores the output.
  5. **Share** — put it where the team can find and run it.
  6. **Maintain** — re-test when the model changes; retire when obsolete.
* Most people stop at step 1. The value is in steps 2–6.

> If only *you* can run it, only on *your* screen — it isn't a team asset yet.

---

## What Goes in a Library Entry

* Reusable only if the next person can pick it up cold. Capture:
  - **Name** — verb + object: "Triage support queue", "Draft renewal email".
  - **What it's for** — the job, and when to reach for it.
  - **Inputs required** — the file, the message, the `[VARIABLES]` to fill.
  - **The prompt itself** — full, tested text.
  - **Example input → output** — so they know what "good" looks like.
  - **Known limits & review step** — where it fails, the one check to run.
  - **Changelog** — what changed and when.
* Template: `course-materials/prompt-library-template.md` — we fill it in the lab.

> Write the entry for a colleague who's never seen the prompt and is in a hurry.

---

## Versioning — Improve Without Losing What Worked

* Bump the version whenever the prompt **text** changes. Keep the old one.
* A real changelog reads like cause and effect:

```text
v1.2 — added source-boundary clause ("use only the attached file") → fewer invented facts
v1.1 — tightened output to a fixed table → no more reformatting by hand
v1.0 — initial version
```

* Why: a "small tweak" can quietly make a prompt worse. Versioning lets you **roll back** and see which clause moved quality.

> Treat prompts like recipes, not guesses. Write down the change and what it did.

---

## Saving a Reusable Assistant

* Highest form of reuse: bake role and rules into a saved assistant — every run starts from the same place, no long copy-paste.
  - **ChatGPT → Custom GPTs / Projects** — a named assistant with baked-in instructions and files (our class tool).
  - **Claude → Projects** — persistent instructions + reference files for a body of work.
  - **Gemini → Gems** — a saved custom assistant with its own instructions.
* Put **role, constraints, source rule, output format** in the saved instructions. Users just provide the input.

> A saved assistant is your library entry made **runnable** — the role can't be forgotten.

---

## Sharing Across a Team

* A prompt library is only as good as its **adoption**.
  - Keep it where people already work — shared doc, repo, or sheet.
  - Pair heavily-used prompts with a one-line **SOP**: when to use, what to check.
  - Name a simple **approval bar**: reviewed by one other person, scored on the rubric.
* The payoff is consistency — five people, same prompt, comparable output.

> The goal: a new teammate does the task the team's way on day one.

---

## Responsible Use — Built In, Not Bolted On

* Every library entry carries a short responsible-use note:
  - **Privacy / confidentiality** — what data may and may not go in.
  - **Bias** — where output could skew (hiring, lending, evaluation language).
  - **Human oversight** — who signs off before output is used.
  - **Verification** — the fact-check step that stays, every time.
* Not legal boilerplate — the **review step** that keeps a fast tool safe.

> "The assistant drafted it" is never why something shipped. A **person** is.

---

## When NOT to Use AI

* Some tasks need a human, full stop. Red flags:
  - A **final decision** about a specific person (hiring, firing, discipline, credit).
  - **Regulated or confidential** data going into a public tool.
  - Anything where a **confident wrong answer** is expensive and hard to catch.
  - Work you **can't verify** and the stakes are real.
* Good judgment is knowing the tool's edge — and stopping there.

> Part of prompt engineering is recognizing the prompt you **shouldn't** send.

---

## Keeping Current

* Models change every few months. Your library shouldn't rot:
  - **Re-test approved prompts** after a model upgrade; note the last-checked date.
  - Drop clauses newer models made unnecessary; keep the ones still earning their place.
  - Watch for new features (longer context, better grounding) that let you simplify.

> A prompt library is a garden, not a monument. Tend it.

---

## What You'll Do in the Lab

* Take one strong prompt from earlier (Lab 03 or Lab 04).
* **Document and version** it as a full library entry using the template.
* **Save** it as a Custom GPT / Project / Gem so anyone can run it.
* Add a 3-line **responsible-use / when-not-to-use** note.

> You leave Module 6 with the first real entries of a library your team could adopt Monday.
