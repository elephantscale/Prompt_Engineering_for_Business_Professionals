# Lab 02 - The Anatomy of a Strong Prompt

> **The core skill of the whole course.** A strong prompt is built from named parts, not
> typed from a blank box. In this lab you take weak, real-world prompts and rebuild them
> with the anatomy — **Role, Task, Context, Constraints, Format, Examples (R-T-C-C-F-E)** —
> then *measure* the improvement instead of trusting your gut.

## Goal

Rewrite a set of weak prompts into strong ones using the six building blocks, prove the
rewrite is better by running both and comparing, and leave with your own reusable prompt
template you can use for everyday work.

## The six building blocks (your checklist)

- **Role** — who the model should be ("act as a support lead").
- **Task** — the one clear verb + outcome ("draft", "summarize", "extract"…).
- **Context** — the situation, the reader, and the **source material** (attach it).
- **Constraints** — length, tone, must-include, must-avoid, and the **source rule**.
- **Format** — the exact output shape (table, email, five bullets, checklist).
- **Examples** — one or two samples of "good" when style/format is hard to describe.

> Full template: [`course-materials/prompt-template.md`](../../course-materials/prompt-template.md).
> One-page reference: [`prompt-anatomy-cheatsheet.md`](../../course-materials/prompt-anatomy-cheatsheet.md).

## Time

60–75 minutes

## Tools

**Your assistant** — Claude (lead examples), ChatGPT, or Gemini; whichever you've been given
a hands-on account for. Provided material:
[`weak-prompts.md`](../assets/weak-prompts.md) (the eight prompts to rewrite),
[`sample-return-policy.md`](../assets/sample-return-policy.md) (ground #5 and #8), and
[`sample-quarterly-report.md`](../assets/sample-quarterly-report.md) (attach for #2 and #6).

No account for a second assistant is needed — this lab is all hands-on in your own. If you
want a comparison, rerun the weak vs. strong pair in a reasoning model as well.

## Steps

1. Open [`weak-prompts.md`](../assets/weak-prompts.md). Pick **three** prompts to rebuild
   (at least one that needs a source file — #2, #5, #6, or #8).
2. For each, first **run the weak prompt as-is** in a fresh/temporary chat and keep the
   result. This is your baseline — don't skip it; the measurement is the point.
3. Rewrite it using R-T-C-C-F-E. Not every block every time — add the blocks that remove a
   real failure for *this* task. For source-grounded prompts, attach the file and add the
   **source rule** ("use only this; if it isn't here, say so").
4. Run the strong version in a fresh chat.
5. Put the two results side by side and note **what changed** — accuracy, format, tone,
   whether it stopped guessing. Name the single block that helped most.
6. After three rewrites, distill what worked into your **personal prompt template**
   (start from [`prompt-template.md`](../../course-materials/prompt-template.md) and make it
   yours).

## Prompt Starter

```text
# ROLE
Act as a [role] writing for [audience].
# TASK
[Verb] [object] so that [outcome].
# CONTEXT
[Situation + reader. Attach or paste the source material.]
# CONSTRAINTS
Length: [budget]. Tone: [tone]. Must include: [...]. Must avoid: [...].
Use ONLY the attached material; if it isn't there, say "not in the source".
# FORMAT
[Exact shape: table columns / N bullets / email / checklist.]
```

## Deliverable

- **Before/after** for at least three prompts: the weak prompt + its result, the strong
  prompt + its result, and one line on what improved and which block drove it.
- Your **personal reusable prompt template**, filled with your own defaults.

## Review

Judge the rewrite by the *result*, not by how impressive the prompt looks. Did the strong
version: stop inventing facts, hit the exact format, match the audience, and need less
editing before you'd use it? If a rewrite didn't beat the baseline, figure out which block
is still missing.

## Instructor Flow

Open by taking one weak prompt from the room ("summarize this") live. Run it, read the
mediocre result aloud, then rebuild it block by block on screen — ask the room for each
block ("who's the audience? what format?"). Re-run. The jump in quality is the lesson; let
them see it happen, don't just assert it.

Recommended timing:

| Activity | Minutes |
|----------|---------|
| Live rebuild demo (one prompt, block by block) | 15 |
| Students pick 3 prompts + run baselines | 10 |
| Rewrite with R-T-C-C-F-E + rerun | 25 |
| Build personal template | 10 |
| Group debrief | 10 |

## Detailed Exercise

### Part 1 — Establish the baseline

Run the weak prompt exactly as written, in a fresh/temporary chat (memory off, so you're
testing the prompt, not saved settings). Keep the output. Without a baseline you can't claim
the rewrite is better.

### Part 2 — Rebuild with the anatomy

Add blocks that remove real failure modes for this task:

- **#1 "Write a marketing email"** needs Role, audience, the offer, a length, and a tone.
- **#5 "Reply to this angry customer"** needs the **source** (the policy), a tone constraint,
  and a no-over-promising rule — otherwise the model invents refund terms.
- **#8 "Explain our return policy"** is the danger case: without
  [`sample-return-policy.md`](../assets/sample-return-policy.md) attached and a source rule,
  the model will hallucinate a plausible, wrong policy.

### Part 3 — Measure and name the winning block

For each pair, write one line: *"The strong version stopped guessing the refund window — the
**source rule** did it."* That sentence is the reusable lesson.

### Part 4 — Build your template

Distill your three rewrites into a personal template. Keep the blocks you used most and your
own defaults (your common audiences, your house format, your standard source rule).

## Expected Result

Students should see that strong prompts aren't just longer — each added clause fixed a
specific failure. The biggest, most repeatable wins come from **naming the audience/format**
and **attaching the source with a boundary**. Everyone leaves with a template they'll
actually reuse.

## Troubleshooting

- **"The weak and strong results look similar."** The task was probably easy enough to be
  robust. Pick a harder prompt (a source-grounded one), or make the weak baseline honestly
  thin.
- **"The strong prompt got worse."** Usually an over-stuffed prompt with conflicting
  constraints. Remove blocks you don't need; one clear task beats five vague ones.
- **Model still invents facts** → you didn't attach the source, or omitted the source rule.
  Add both.
- **Different answer every rerun** → memory/custom instructions are on. Use a temporary chat.
- **Format ignored** → give a skeleton (exact columns / a sample line), not just "as a table".

## Completion Criteria

The lab is complete when the student has three before/after pairs with a named winning block
for each, at least one of which is source-grounded, plus a personal reusable prompt template.

---

## Teacher's Playbook

Everything below lets you run this lab live with confidence, using the exact sample files in
`labs/assets/`.

### The worked task (use this if the room is quiet)

Rebuild weak prompt **#8, "Explain our return policy to a customer."** It's the best teaching
case because the weak version fails *dangerously* (invents a policy), and the fix is the one
move the whole course leans on.

**Baseline (run this first, no file attached):**

```text
Explain our return policy to a customer.
```

**Strong rewrite (attach `labs/assets/sample-return-policy.md`):**

```text
Act as a customer-support rep. A customer on an annual plan, 20 days after purchase, asks
whether they can get a refund. Using ONLY the attached return policy, answer them in a short,
warm email (under 120 words). Quote the specific rule that applies. If the policy doesn't
cover something they asked, say "that isn't covered in our policy" rather than guessing.
End with one concrete next step.
```

### Model answer — a STRONG response (what Claude tends to return)

```text
Subject: Your refund question

Hi — thanks for reaching out. Annual plans are fully refundable within 14 days of purchase.
Since it's been 20 days, your plan is past that window, so it isn't eligible for a refund.

The good news: it won't auto-renew. As long as you cancel before your renewal date, you
simply won't be charged again, and you keep access until the term ends.

If you'd like, I can cancel auto-renew for you now — just reply and confirm.

Thanks,
[Name] — Northwind Support
```

Why it's strong: every factual claim (14-day window, no auto-renew) is **from the policy**,
it doesn't invent a goodwill refund the rep can't offer, and it ends with a real next step.

### Model answer — a WEAKER response (what the baseline tends to return)

```text
Thanks for your question! Our return policy is designed with your satisfaction in mind. You
can typically return items within 30 days for a full refund, no questions asked. We also
offer a money-back guarantee if you're not completely delighted. Just contact support and
we'll be happy to process your refund right away!
```

Why it's weak — walk the room through each line:

- **"within 30 days for a full refund"** — **invented**; the annual-plan rule is 14 days. The
  model pattern-matched a generic policy because you gave it none.
- **"money-back guarantee… not completely delighted"** — a promise the company never made.
- **"process your refund right away"** — sets an expectation the rep then has to walk back.
- No source, no specific rule, off-brand exclamation-point tone.

> Put both on screen. The weak one *sounds* friendlier and more confident — and it would get
> a rep in trouble. The strong one is useful precisely because it's bounded by the real policy.

### Live demo script (exact click-path)

1. Open your assistant. Start a **temporary/new chat** (say why: testing the prompt, not
   memory).
2. Run the **baseline** #8 with no file. Read the confident, invented policy aloud.
3. Attach `labs/assets/sample-return-policy.md`. Paste the **strong rewrite**. Run it.
4. Read the two side by side. Point at the 14-day rule in the policy file — show the strong
   answer quoted it and the weak one didn't.
5. Ask a follow-up live: `Now the customer says they're a nonprofit and asks for a discount.`
   The grounded assistant should say that isn't covered in the policy — the correct behavior.
6. Do one more rebuild from the room's own example to show the blocks generalize.

### Common student mistakes and how to redirect

- **Skipping the baseline run.** → "If you don't run the weak one, you can't prove the strong
  one is better. Run both."
- **Confusing 'long' with 'strong'.** → "We're not padding. Each block kills a failure. If a
  clause doesn't remove a way it goes wrong, cut it."
- **Describing the source instead of attaching it.** → "Don't tell it about the policy —
  give it the policy, then say 'use only this'."
- **Leaving memory on.** → "Temporary chat, or your saved settings contaminate the test."
- **Vague format ('make it nice').** → "Name the shape: columns, bullet count, email with a
  subject. Give a skeleton."

### Debrief questions with model answers

- **Q: Which single block gave you the biggest jump?**
  A: Usually the **source + source rule**, then **format/audience**. Naming who it's for and
  handing over the real material fixes the most failures at once.

- **Q: Why did the weak #8 invent a 30-day policy?**
  A: With no source, the model completes the most statistically common policy it has seen.
  That's hallucination — confident and plausible, but not *your* policy.

- **Q: Do you always need all six blocks?**
  A: No. Use the blocks that remove real risk for the task. A quick internal summary might
  need only Task + Format; a customer-facing reply needs Role, Context/source, Constraints.

- **Q: How does this connect to the rest of the course?**
  A: Module 3 adds brand voice (a reusable Constraints + Examples block), Module 4 chains
  several of these prompts together, Module 5 scores them, Module 6 saves the best ones.

### What good looks like

A strong deliverable:

- Has a real **baseline** for each rewrite, not just the polished version.
- Shows rewrites that **stopped a specific failure** (invented facts, wrong format, off tone),
  with the winning block named.
- Includes at least one **source-grounded** rewrite with a boundary rule.
- Ends with a **personal template** the student can defend and will actually reuse.

A weak deliverable is three longer prompts with no baseline and no measurement — "it seems
better." Redirect: run the baseline, then point at the one concrete thing that changed.
