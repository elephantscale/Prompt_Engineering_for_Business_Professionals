# Lab 07 - Capstone Project

> **This is the whole course in one deliverable.** You pick a real, recurring challenge from
> your own work and build an AI-assisted solution that someone else on your team could run
> and get the same result. Everything from Modules 1-6 comes together here.

## Goal

Design, build, test, and demo an AI solution for a genuine challenge from your own work —
using the prompt **anatomy** (M2), your **brand voice** and a real **business scenario**
(M3), a **chain / grounding / reasoning** step only where it earns its place (M4), a
**scored evaluation** (M5), and **packaging** as a reusable, documented library entry (M6).
You leave with a working solution, a guardrail, and a 30-day plan to adopt it.

## Time

90 minutes build + demos (allow ~3 minutes per participant for presentations).

## Tools

**Your own assistant** — Claude, ChatGPT, or Gemini — plus the ability to save reusable
context (a **Project** in Claude, a **Custom GPT** in ChatGPT, or a **Gem** in Gemini). If
you don't have your own real material handy, a fully worked example using the provided
sample data is in the Teacher's Playbook; you may adopt it.

Templates you will use:

- [`../../course-materials/prompt-template.md`](../../course-materials/prompt-template.md) — the R-T-C-C-F-E shape
- [`../../course-materials/brand-voice-worksheet.md`](../../course-materials/brand-voice-worksheet.md) — if your task produces customer-facing text
- [`../../course-materials/evaluation-rubric.md`](../../course-materials/evaluation-rubric.md) — to score your output
- [`../../course-materials/prompt-library-template.md`](../../course-materials/prompt-library-template.md) — to package the winner
- [`../../course-materials/capstone-rubric.md`](../../course-materials/capstone-rubric.md) — how you'll be scored

Sample data (for the worked example or if you need a stand-in task):
[`../assets/sample-support-emails.csv`](../assets/sample-support-emails.csv),
[`../assets/sample-return-policy.md`](../assets/sample-return-policy.md),
[`../assets/sample-brand-voice.md`](../assets/sample-brand-voice.md).

## Steps

1. **Choose a challenge** that is *real, recurring, and worth it* — a task you actually do,
   often, that costs enough time or friction to matter. (Candidate list below.)
2. **Name the before.** How do you do it manually today, and how long does it take? Write it
   down now — it's half of your before/after.
3. **Frame the prompt** with the anatomy: role, task, context, constraints, format. Attach
   your real source material and add *"use only this; if it's not here, say so."*
4. **Decide: one prompt or a chain?** Try one prompt first. Only break it into a chain
   (extract → draft → review) if a single prompt can't do it reliably. Don't over-build.
5. **Evaluate** the output against [`../../course-materials/evaluation-rubric.md`](../../course-materials/evaluation-rubric.md).
   Score it. If it's below the bar, refine — **change one thing at a time** — and re-score.
6. **Add a guardrail** on purpose: a source boundary, a human review step, a privacy rule,
   or an uncertainty flag. Be ready to say which failure it catches.
7. **Package the winner**: fill in a [`library entry`](../../course-materials/prompt-library-template.md)
   and save it as a **Project / Custom GPT / Gem** so it's reusable, not retyped.
8. **Write a 30-day adoption plan** (week-by-week handoff to your team). A working skeleton:
   *wk1* — use it daily and log the misses; *wk2* — refine, lock the version, and write the
   library entry; *wk3* — hand it to one colleague cold (they run it without you); *wk4* —
   roll it to the team and set a re-test reminder for the next model update.
9. **Prepare a 2-3 minute demo**: problem → before → run it → guardrail → plan. *Working
   alone?* Record a 2-3 minute screen capture or write out the demo script, and self-score
   against the [`capstone rubric`](../../course-materials/capstone-rubric.md).

## Prompt Starter

Use the anatomy template as your starting frame, then specialize it to your task:

```text
# ROLE
Act as a [role] producing [deliverable] for [audience].

# TASK
[The recurring task], so that [business outcome].

# CONTEXT
[Attach your real source material.] The reader is [who]; they will use this to [do what].

# CONSTRAINTS
- Use ONLY the attached material; if something isn't in it, say "not in the source".
- [Length / tone / must-include / must-avoid]. Match the attached brand voice if customer-facing.
- Mark anything uncertain or unverified as "needs review".

# FORMAT
[The exact output shape a colleague could paste straight into the workflow.]

# REVIEW
State your assumptions and list anything that was missing from the source.
```

## Deliverable

A capstone package containing:

1. The **working prompt or prompt chain** (the actual text).
2. A **before/after** with the time or quality gain named in numbers.
3. At least one **deliberate guardrail**, and the failure it catches.
4. A completed **library entry** (reusable by someone else) — minimum fields: **id,
   version, owner, source files, and the review step**.
5. A **30-day adoption plan**.
6. A short **demo** (live run or saved output).

## Review

Judge your own capstone before you present it: *Could a colleague run this cold and get my
result? Is the output usable with only light review? Did I add technique only where it
helped? Have I named the one place this could be confidently wrong — and who catches it?*
Fluent output is not the bar; **reliable, reusable, safe** output is.

## Instructor Flow

Open with the fully worked example below (Teacher's Playbook) so the room sees the target
shape of a finished capstone — a small, real, reusable solution, not a science project.
Then:

- **Timebox hard.** 10 min choose + frame, 40 min build + evaluate + package, 15 min write
  the 30-day plan and rehearse, then demos. Announce each boundary.
- **Circulate during the build.** The two failure modes to catch early: (1) a task that's
  too big or one-off, and (2) over-building a chain when one prompt would do.
- **Require a score.** No capstone is "done" until its output has a number from the rubric.
- **Demos:** 2-3 minutes each, hard stop. Score live against the capstone rubric.

Recommended timing:

| Activity | Minutes |
|----------|---------|
| Instructor: walk the worked example | 10 |
| Choose a challenge + frame the prompt | 10 |
| Build, evaluate, refine, package | 40 |
| 30-day plan + rehearse demo | 15 |
| Demos + scoring | remaining |

## Detailed Exercise

### Part 1 - Choose and scope (10 min)

Pick from your own work, or one of these proven candidates:

- Weekly status/metrics → a short leadership update
- Support or sales replies drafted in your brand voice (grounded in a policy)
- Meeting notes → decisions + owned action items
- First-draft job descriptions / SOPs / release notes
- A competitive or market-research digest from pasted sources
- RFP / security-questionnaire first-pass answers (grounded in approved docs)

Write one sentence: *"Every [week], I [task], which takes about [time]."* That sentence is
your scope and the start of your before/after.

### Part 2 - Build and ground (part of the 40)

Frame with the anatomy. Attach real source material — don't rely on the model's memory.
Add the source boundary. Run it. Read the output against what you actually need.

### Part 3 - Decide on technique (part of the 40)

Be deliberate: does this need a **chain** (the output of step 1 feeds step 2), a
**reasoning model** (multi-step logic where a wrong middle step ruins the answer), or
**grounding** (answer strictly from your documents)? If plain single-prompt works, that's a
*better* answer, not a worse one.

### Part 4 - Evaluate and refine (part of the 40)

Score with the rubric. Identify the lowest criterion, add the one clause that fixes it,
re-run, re-score. Keep the higher-scoring version and note *which clause* moved the number.

> Saved context is the *point* of this capstone — your Project/GPT/Gem helps by baking in
> the role and source. But when you're comparing two versions to pick a winner, run them in
> a clean chat, so you're scoring the prompt, not your saved memory.

### Part 5 - Package (part of the 40)

Fill in the library entry. Save the prompt as a Project / Custom GPT / Gem with the source
material and role attached. The click-path: **Claude** — Projects → New Project → add your
files to the project knowledge; **ChatGPT** — Explore GPTs → Create; **Gemini** — Gems → New
Gem. Confirm it runs from the saved version, not your clipboard.

### Part 6 - Plan and present (15 min + demos)

Write the 30-day plan. Rehearse the 2-3 minute demo once.

## Expected Result

A small, finished, reusable AI solution to a real problem — with a scored before/after, a
named guardrail, a library entry someone else could use, and a concrete adoption plan.
Students should leave able to run it Monday and hand it off within a month.

## Troubleshooting

- **"My task is too big."** Narrow it to one step of the workflow. A great solution to one
  recurring sub-task beats a vague solution to the whole job.
- **"One prompt isn't reliable enough."** Good — that's your signal to chain it (extract →
  draft → review), or to ground it in source material you weren't attaching.
- **"It keeps inventing details."** You're missing a source boundary. Attach the real
  material and add "use only this; if it's not here, say so."
- **"It's off-brand."** Attach the brand-voice worksheet, and give it one real sentence in
  your voice as an example.
- **"I can't show real company data."** Use the sample data or anonymize yours — and note
  that data rule *as* your privacy guardrail. That's a finding, not a failure.
- **"My output scores well but I can't explain why it's safe."** Name the one failure you're
  most worried about and the control that catches it. If you can't, add one.

## Completion Criteria

The capstone is complete when the participant has: a working prompt/chain, a numeric
before/after, at least one deliberate guardrail, a completed library entry, a 30-day plan,
and a delivered 2-3 minute demo. It scores **at least 18/30** on the
[`capstone rubric`](../../course-materials/capstone-rubric.md) — with **Safety & judgment**
and **Business fit** each scoring non-zero (aim for 3/5 or better on both), since a capstone
that's unsafe or solves no real problem doesn't pass on total points alone.

---

## Teacher's Playbook

Everything below lets you run the capstone with confidence and show a finished example using
the sample data in `labs/assets/`, so you can reproduce it on screen.

### The worked example capstone (show this first)

**Challenge (real and recurring):** "Every Monday, a support lead triages the weekend queue
and drafts first replies. It takes about 90 minutes and the replies vary in tone and
sometimes over-promise on refunds."

**Solution:** a two-step chain, saved as a Project/Custom GPT/Gem, over
`../assets/sample-support-emails.csv`, grounded in `../assets/sample-return-policy.md` and
`../assets/sample-brand-voice.md`.

**Step 1 - Triage prompt (ready to run):**

```text
You are a support team lead triaging Monday's queue. Using ONLY the attached
support-emails CSV:
1. Classify each email by type (billing, shipping, compliance, feature request,
   cancellation, praise) and urgency (high/medium/low).
2. Flag anything that is a compliance or legal question rather than a normal ticket —
   do NOT attempt to answer those; route them to a human.
3. Output a table: id, customer, type, urgency, first action (one line).
Do not invent details not in the messages. If information is missing, say so.
```

**Step 2 - Reply-drafting prompt (ready to run), fed the triage output:**

```text
For each NON-compliance ticket marked high or medium urgency, draft a reply.
Ground every factual claim in the attached return policy; if the policy doesn't cover
the question, say "I'll check and follow up" rather than inventing terms.
Match the attached brand voice exactly. Each reply: <120 words, names a concrete next
step and a timeframe, no upsell. Mark anything needing human sign-off as [NEEDS REVIEW].
```

**Guardrail:** the compliance flag in Step 1 plus the "ground in the policy / don't invent
terms" rule in Step 2 — together they catch the two real risks (answering a HIPAA question,
and over-promising a refund).

### Model answer - a STRONG capstone

```text
Problem: Monday support triage + first-reply drafting, ~90 min/week, inconsistent tone.
Before: 90 min, replies vary, occasional refund over-promise.
After: ~20 min to review/send AI drafts. Consistent brand voice. No invented policy terms.
Chain: triage (classify + compliance flag) -> reply drafting (grounded, brand voice).
Guardrail: Northstar/HIPAA row is flagged and routed to a human, not answered; refund
  terms quoted from the policy, not invented; [NEEDS REVIEW] tags on anything uncertain.
Evaluation: scored 35/40 on the rubric; lost points only on Reusability (needs the CSV
  re-attached each week).
Packaging: saved as a "Support Triage" Project with the policy + brand voice attached.
Library entry: PL-021 v1.0, owner = Support lead, review step = lead approves before send.
30-day plan: wk1 use daily + log misses; wk2 refine + lock v1.1; wk3 hand to one agent
  cold; wk4 roll to team, re-test reminder set for next model update.
```

Why it's strong: it's small and real, the before/after is in numbers, it uses a chain
*because one prompt couldn't flag compliance and draft safely at once*, and the guardrail
is named and tied to a specific failure. The honest "lost points on Reusability" shows
judgment.

### Model answer - a WEAKER capstone (what to watch for)

```text
I built an "AI Business Assistant" that can do everything — emails, analysis, strategy,
marketing, HR. You just ask it anything and it helps! It's super powerful and will save
tons of time. I used a really advanced reasoning model with a long clever prompt. It
writes great. This will transform how our whole company works.
```

Why it's weak — walk the room through it:

- **"Can do everything"** - not a task; no recurring job, no user, no before/after.
- **"Save tons of time"** - no numbers. Unmeasurable claim.
- **"Advanced reasoning model + clever prompt"** - technique for show, not because the task
  needed it.
- **No source material, no guardrail** - it will invent facts; nothing catches the risk.
- **No library entry, no adoption plan** - only the author can run it, once.
- **"Transform the whole company"** - scope inflation that guarantees it ships nothing.

> Put the two side by side. The weak one *sounds* more ambitious. The strong one is the one
> that's actually running next Monday.

### Facilitation click-path (how to run the session)

1. Show the worked example end to end: run Step 1 on the CSV, then feed its table into Step
   2 with the policy and brand-voice files attached. Read one drafted reply aloud; point out
   it quoted the policy and flagged the HIPAA row.
2. Save it live as a Project/Custom GPT/Gem so the room sees "prompt → product."
3. Release the room to choose their own challenge. Circulate; catch too-big and over-built.
4. At the 40-minute mark, call "score it now" — no capstone proceeds without a rubric number.
5. Run demos on a hard 3-minute clock. Score each against the capstone rubric in view.

### Common student mistakes and how to redirect

- **Picks a one-off task.** → "Reuse is the payoff. What do you do *every week*?"
- **Builds a chain to look advanced.** → "Does one prompt clear the bar? If yes, ship that —
  simpler is the better answer."
- **No source material.** → "You're relying on its memory. Attach your real doc and add the
  source boundary, or it'll invent facts."
- **'It felt faster.'** → "Put a number on before and after. No number, no before/after."
- **No guardrail.** → "Name the one way this could be confidently wrong. Now add the control
  that catches it."
- **Only they can run it.** → "Write the library entry and save it as a Project/GPT/Gem. If a
  colleague can't run it cold, it's not done."

### Debrief questions with model answers

- **Q: Why does a before/after need numbers?**
  A: "Faster" is unfalsifiable and won't justify adoption. "90 minutes → 20 minutes" is a
  decision a manager can act on, and it sets the bar the solution has to keep clearing.

- **Q: When is a chain worth it over one prompt?**
  A: When the task has distinct steps where a wrong intermediate result ruins the final one
  — here, triage *then* draft, so the compliance flag happens before any reply is written.
  If one prompt reliably does the whole job, the chain is just overhead.

- **Q: What makes a guardrail real rather than decorative?**
  A: It maps to a specific failure and someone acts on it. "Route compliance questions to a
  human" catches the HIPAA row; "[NEEDS REVIEW] tags" tell the approver where to look.

- **Q: Why package it as a Project/GPT/Gem instead of a saved prompt?**
  A: A saved prompt still depends on whoever remembers to paste it with the right files. A
  Project/GPT/Gem bakes in the role and source material so every run is consistent and
  anyone on the team gets the same result.

- **Q: What belongs in the 30-day plan that people usually skip?**
  A: The cold hand-off — watching a colleague run it without you — and a re-test reminder
  for the next model update, since model changes can quietly change behavior.

### What good looks like

A strong capstone:

- Solves a **real, recurring** task the presenter actually has.
- Shows a **numeric** before/after.
- Uses advanced technique **only where it earned its place**.
- Has a **scored** output and names which clause moved the score.
- Names a **real guardrail** tied to a specific failure, and a **review step** that stays.
- Is **packaged** so someone else can run it, and has a concrete **30-day plan**.

A weak capstone is an ambitious "do-everything assistant" with no user, no numbers, no
source boundary, and no path to anyone else using it. Redirect those to narrow to one real,
weekly sub-task and put a number on it.
