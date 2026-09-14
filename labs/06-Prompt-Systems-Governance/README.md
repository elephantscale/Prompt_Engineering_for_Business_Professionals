# Lab 06 - Building & Governing Prompt Systems

> **The shift in this lab:** until now you've been building prompts *for yourself*. Here you
> turn one of them into an **asset your team can run** — documented, versioned, saved as a
> reusable assistant, and carrying its own responsible-use note. A prompt only you can run,
> only on your screen, isn't a team asset yet.

## Goal

Take one strong prompt you already built in this course, **document and version** it as a
reusable library entry, **save it** as a reusable assistant (a Claude Project, ChatGPT
Custom GPT, or Gemini Gem), and attach a short **responsible-use / when-not-to-use** note —
so anyone on your team gets the same result you did.

## Time

60–75 minutes

## Tools

**Your own assistant** — Claude (lead), ChatGPT, or Gemini — with the ability to save a
reusable assistant (**Projects** in Claude, **Custom GPTs** in ChatGPT, **Gems** in
Gemini). Confirm this feature is on your plan before class (see `labs/SETUP.md`).

Templates you'll use:

- [`prompt-library-template.md`](../../course-materials/prompt-library-template.md) — the
  entry format you fill in.
- [`evaluation-rubric.md`](../../course-materials/evaluation-rubric.md) — how a reviewer
  scores the entry before it's "approved".

Source prompt: pick the best prompt you built in **Lab 03** (an on-brand business artifact)
or **Lab 04** (a prompt chain). If you want a ready-made one, use a support-triage prompt
over [`sample-support-emails.csv`](../assets/sample-support-emails.csv).

## Steps

1. **Choose the prompt worth keeping.** Pick one that did real work for you and that you'd
   run again. Reusable beats clever.
2. **Document it** in a copy of
   [`prompt-library-template.md`](../../course-materials/prompt-library-template.md): name
   (verb + object), what it's for, inputs required, the full prompt text with `[VARIABLES]`
   marked, an example input → output, known limits, and the one review step.
3. **Version it.** Give it `v1.0` and start a changelog. Then make **one deliberate
   improvement** (e.g. add a source-boundary clause), bump to `v1.1`, and write the
   changelog line as cause → effect.
4. **Save it as a reusable assistant.** Create a Project / Custom GPT / Gem. Put the role,
   constraints, source rule, and output format into the saved instructions so users only
   supply the input.
5. **Test the saved assistant** with a fresh input. Confirm someone who only provides the
   input gets the right output — no long prompt to paste.
6. **Write the responsible-use note** (3 lines): what data may/may not go in, who signs off,
   and the verification step that always stays.
7. **Add the "when not to use AI" line** for this specific prompt — the case where it should
   be handed to a human instead.

## Prompt Starter

Use this to have the assistant help you *write the saved instructions* for your reusable
assistant:

```text
I'm turning the prompt below into a reusable assistant that my team will run. Rewrite it as
a set of standing INSTRUCTIONS for a saved assistant (Project / Custom GPT / Gem): state the
role, the constraints, the source rule ("use only files/input the user provides; if the
answer isn't there, say so"), and the exact output format. Write it so the user only has to
supply the input. Keep it under 200 words.

[paste your prompt here]
```

## Deliverable

- One **completed library entry** (filled-in `prompt-library-template.md`) with a version
  number and a real changelog (at least v1.0 → v1.1).
- A **saved reusable assistant** (Project / Custom GPT / Gem) that produces the right output
  from input alone — capture a screenshot or the output of one test run.
- A **3-line responsible-use note** plus a one-line **"when not to use AI"** for this prompt.

## Review

A strong entry is judged by whether a **colleague who has never seen the prompt** could run
it correctly from your documentation alone. Check: are the inputs explicit? Is the review
step concrete? Does the saved assistant actually carry the role, or did you leave it in a
prompt you'd have to paste each time?

## Instructor Flow

Open by contrasting two screens: a brilliant prompt buried in someone's chat history vs. a
saved assistant anyone can open and run. Ask: *which one survives the person going on
vacation?* Then build one library entry live (steps 2–4 below) so students copy the shape.
Emphasize the **changelog** as the habit that separates a library from a pile of prompts.

Recommended timing:

| Activity | Minutes |
|----------|---------|
| Instructor: lucky-prompt vs. reusable-asset demo | 10 |
| Pick a prompt + document it | 15 |
| Version it + write the changelog | 10 |
| Save it as a Project/Custom GPT/Gem + test | 20 |
| Responsible-use + when-not-to-use note | 10 |
| Group share: two entries read aloud | 10 |

## Detailed Exercise

### Part 1 — Document

Fill in every field of the template. The two fields people skip — and the two that matter
most — are **Inputs required** and **Known limits & review step**. Without them the next
person runs it wrong and trusts it anyway.

### Part 2 — Version

Record `v1.0`. Make one improvement and record `v1.1` with a changelog line that names the
*effect*, not just the change:

```text
v1.1 — added "use only the attached file; if it isn't there, say so" → stopped inventing policy details
```

### Part 3 — Save a reusable assistant

Create the Project / Custom GPT / Gem. Move the role, constraints, source rule, and format
into the **saved instructions**. Then start a fresh session and give it *only* the input —
if it still produces the right output, the role is properly baked in.

### Part 4 — Govern it

Write the responsible-use note and the "when not to use AI" line. These travel *with* the
entry so the guardrail can't be forgotten by whoever reuses it.

## Expected Result

Students discover that the work isn't the prompt — it's the **documentation and the saved
role**. A strong deliverable is one a teammate could adopt on Monday without asking a single
question, and that carries its own safety rails.

## Troubleshooting

- **"My saved assistant still needs the long prompt pasted."** Then the role is still in the
  prompt, not the instructions. Move role/constraints/format into the saved instructions.
- **Feature not available on the plan.** Write the saved-instructions text anyway and paste
  it as the first message of a fresh chat — same effect, one manual step. Note it in the entry.
- **Changelog is just "improved it".** Rewrite as change → effect, or it's useless for roll-back.
- **Entry is a wall of text.** It's reference, not prose. Keep fields short; the prompt is
  the only long part.
- **Responsible-use note is generic.** Make it specific to *this* prompt's data and decision.

## Completion Criteria

The lab is complete when the student has: a fully filled-in library entry with a version and
a real changelog, a saved reusable assistant that works from input alone, and a
responsible-use note with a "when not to use AI" line — all for a prompt they actually built.

---

## Teacher's Playbook

Everything below lets you run this lab live with confidence, using the course sample data.

### The worked task (use this if the room is quiet)

Package a **weekly support-triage** assistant built on
[`sample-support-emails.csv`](../assets/sample-support-emails.csv). Here is the prompt at
`v1.0`, which students will document and then improve:

```text
You are a support team lead. Read the attached support emails and give me a prioritized
list of what to handle first, with the type and urgency of each.
```

Walk the room through turning this into a documented, versioned, saved asset.

### Model answer — a STRONG library entry

```markdown
# Triage support queue

**ID / version:** PL-003 · v1.1
**Owner:** Support Ops
**Last updated:** 2026-09-10
**Status:** reviewed
**Category:** support

## What it's for
Turn a morning support inbox (CSV export) into a prioritized action list, with compliance
items flagged for a human. Run it at the start of each shift.

## Inputs required
- A CSV export of open emails with columns: id, customer, channel, subject, message.
- No variables to fill; just attach the file.

## The prompt
```text
You are a support team lead triaging the queue. Using ONLY the attached CSV:
1. Classify each email by type (billing, shipping, compliance, feature request,
   cancellation, praise) and urgency (high/medium/low).
2. Flag any COMPLIANCE or legal question separately — do not answer it, route it to a human.
3. Give a prioritized action list: first action per email, one line each.
4. Note any email where we risk losing the customer.
Do not invent details not in the messages. If information is missing, say so.
Output a table (id, customer, type, urgency, first action) then a 3-line summary.
```

## Example input → output
- Input: sample-support-emails.csv (8 rows)
- Output: a table of 8 rows; the Northstar Health row flagged COMPLIANCE/route-to-human;
  Metro Finance flagged as churn risk.

## Model / settings
- Works on a fast model; use the reasoning model if the queue is large or messy.

## Known limits & review step
- It will theme free text by judgment; re-read the high-urgency rows before acting.
- REVIEW STEP: a human reads every row flagged "compliance" before any reply is sent.

## Changelog
- v1.1 — added "use ONLY the attached CSV; if missing, say so" → stopped inventing details
- v1.0 — initial version
```

**Why it's strong:** the inputs are explicit, the compliance row is *routed* not answered,
the review step is concrete, and the changelog reads as cause → effect. A new teammate could
run it cold.

### Model answer — a WEAKER library entry (what to watch for)

```markdown
# Support helper

A really useful prompt for support. Just paste your emails and it tells you what's important!

Prompt: "Look at these emails and help me."

Version: latest
```

Why it's weak — walk the room through each line:

- **"Support helper"** — not a verb+object name; you can't find it in a library later.
- **"Just paste your emails"** — inputs undefined; no column expectations, no file guidance.
- **"help me"** — the prompt itself is thin; no source rule, no format, no compliance flag.
- **"Version: latest"** — meaningless; no changelog, so no roll-back and no learning.
- **No known limits, no review step** — the next person trusts it blindly, including on the
  HIPAA row.

> The weak entry *feels* friendly and done. It fails the one test that matters: could someone
> else run it correctly without asking you? No.

### Live demo script (exact click-path)

1. Open your assistant. Run the `v1.0` worked prompt on `sample-support-emails.csv` so the
   room sees a decent-but-undocumented result.
2. Open `course-materials/prompt-library-template.md`. Fill it in live, thinking aloud —
   especially **Inputs required** and **Known limits & review step**.
3. Make the v1.1 improvement (add the source-boundary clause). Re-run. Show that it now says
   "not in the message" instead of guessing. Write the changelog line.
4. Create a **Project / Custom GPT / Gem**. Paste the role/constraints/format into the saved
   **instructions** (not a chat message). Name it "Triage support queue".
5. Start a **fresh** session in that saved assistant. Attach the CSV with **no prompt** (or
   just "go"). Show it produces the table anyway — the role is baked in.
6. Add the responsible-use note aloud: "PII in the CSV stays in our approved workspace; a
   human reads every compliance flag; we verify refund amounts against billing before replying."

### Common student mistakes and how to redirect

- **Packaging a clever one-off they'll never reuse.** → "Pick the boring prompt you run
  every week. Reuse is the point, not cleverness."
- **Leaving the role in the prompt, not the saved instructions.** → "If you still paste a
  wall of text each time, you haven't saved an assistant — you've saved a chat."
- **Empty or vague changelog.** → "Write what changed *and what it did*. 'Improved it' can't
  be rolled back or learned from."
- **Skipping the review step.** → "What's the one check before this output is used? That line
  is the difference between a tool and a liability."
- **Generic responsible-use note.** → "Name *this* prompt's data and *this* decision. Whose
  sign-off, which field gets verified?"

### Debrief questions with model answers

- **Q: Why version a prompt at all?**
  A: Because "small tweaks" silently change quality. Versioning lets you roll back and see
  exactly which clause helped — you're improving deliberately, not guessing.

- **Q: What's the difference between a library entry and a saved assistant?**
  A: The entry is the *documentation* (for humans to understand and review); the saved
  assistant is the entry made *runnable* (the role baked in so it can't be forgotten). You
  want both.

- **Q: When would you NOT turn a task into a reusable prompt?**
  A: When it's a one-off, when the input varies too much to standardize, or when the task is
  a decision about a specific person or regulated data — those need a human, not a saved prompt.

- **Q: A model upgrade just shipped. What do you do with your library?**
  A: Re-test the approved prompts, note the date, drop clauses the new model made
  unnecessary, and keep the ones still earning their place. A library is tended, not frozen.

- **Q: Who is responsible when a reused prompt produces a bad output?**
  A: A person — the owner and the reviewer named in the entry. "The assistant drafted it" is
  never the reason something shipped.

### What good looks like

A strong deliverable:

- Names the prompt as **verb + object** and documents **explicit inputs**.
- Has a **version** and a changelog line written as **change → effect**.
- Is **saved as a Project/Custom GPT/Gem** that works from input alone (proven with a fresh run).
- Carries a **concrete review step** and a **specific responsible-use note**, plus a clear
  "when not to use AI" line.
- Passes the cold-start test: a teammate could run it Monday without asking a question.

A weak deliverable is a friendly description of a thin prompt with "version: latest", no
inputs, no review step, and the role still sitting in a pasteable block. Redirect by asking
the student to hand their entry to a neighbor and have the neighbor try to run it.
