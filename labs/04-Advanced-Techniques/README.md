# Lab 04 - Advanced Prompt Engineering Techniques

> A single prompt has limits. This lab teaches the power-user move: breaking a big task into
> a **chain** of small, reliable steps — extract, draft, review, revise — and **grounding**
> every step in real material so the model can't drift into fiction.

## Goal

Design and run a **multi-step prompt chain** that takes raw input all the way to a finished,
**self-reviewed** deliverable — grounded in a source at every step. You'll see why a chain of
checkable steps beats one do-everything prompt.

## Time

60-75 minutes

## Tools

Your assigned assistant — **Claude, ChatGPT, or Gemini** — ideally the **reasoning/"thinking"**
model for the review steps. Provided material:
[`sample-meeting-notes.md`](../assets/sample-meeting-notes.md) and, for grounding,
[`sample-return-policy.md`](../assets/sample-return-policy.md) or
[`sample-quarterly-report.md`](../assets/sample-quarterly-report.md).

## Steps

1. **Pick the deliverable.** Default: turn the messy meeting notes into a polished
   **stakeholder update email**. (Or choose a recurring deliverable from your own work.)
2. **Step 1 - Extract.** Prompt the model to pull decisions + action items + owners from the
   notes, marking anything unclear. Use only the notes. Inspect the list.
3. **Step 2 - Draft.** Feed that list back and ask for the email in a set format and length.
4. **Step 3 - Review.** Ask the model to critique its own draft against explicit criteria
   (invented anything? every owner from the notes? on brand?).
5. **Step 4 - Revise.** Have it apply its own fixes and return the final only.
6. **Compare to a one-shot.** In a fresh chat, ask for the whole email in a single prompt.
   Put the chain result next to the one-shot result and note the difference.

## Prompt Starter

```text
We'll work in four steps. Do only the step I name; wait for me before the next.

STEP 1 - EXTRACT. From the attached meeting notes, list every decision and every action
item with its owner and any date. Mark anything unclear as "(unclear)". Use only the notes;
do not infer owners that aren't stated.
```

Then, in turn:

```text
STEP 2 - DRAFT. Using only the list above, write a stakeholder update email: decisions
first, then next steps with owners and dates. Under 200 words, plain and direct.

STEP 3 - REVIEW. Critique that draft. Did it add anything not in the list? Is every owner
from the notes? Is the tone plain and on brand? List specific fixes as bullets.

STEP 4 - REVISE. Apply every fix from your review. Return the final email only.
```

## Deliverable

- The full chain transcript (all four steps) **and** the final email.
- The one-shot version for comparison.
- Two sentences: what the **review step** caught that the draft missed, and whether the
  chain was worth it for this task.

## Review

Inspect the **handoffs**, not just the final email. Did Step 1 correctly mark the
status-page owner as unclear? Did Step 3's self-critique find a real problem or just rubber-
stamp the draft? A review step that says "looks great!" and changes nothing is a finding —
tighten the criteria.

## Instructor Flow

Run the chain live, pausing at each handoff so the room can inspect the intermediate output.
The teaching beat is Step 3: a genuine self-critique that catches an invented detail. Then
show the one-shot beside it — usually flatter and more likely to have quietly invented an
owner.

Recommended timing:

| Activity | Minutes |
|----------|---------|
| Why chain? (mega-prompt fails) demo | 10 |
| Steps 1-2 (extract, draft) | 20 |
| Steps 3-4 (review, revise) | 20 |
| One-shot comparison | 10 |
| Debrief | 10 |

## Detailed Exercise

### Part 1 - Extract cleanly

The notes are deliberately messy. A good Step 1 lists the clear items (Priya owns the Q4
roadmap; Marcus scoped SSO at ~3 weeks; Sam owns the Delta follow-up) and marks the genuine
gaps "(unclear)" — notably that **no one owns the status page**. If Step 1 invents an owner,
every later step inherits the error. That's the point of isolating it.

### Part 2 - Draft from the extract, not the raw notes

Feeding the *clean list* (not the raw notes) into the draft step produces a tighter email
and keeps the model from re-reading ambiguous passages and guessing.

### Part 3 - Make the self-review bite

Weak self-reviews just praise the draft. Force specificity: "Find at least two concrete
problems. Check every owner against the list. If the draft claims a decision that wasn't
made (e.g., the Self-Serve price increase was *parked*, not decided), flag it." A strong
review catches exactly that kind of overstatement.

### Part 4 - Chain vs one-shot

The one-shot email is often fine-looking but more likely to (a) state the parked price
increase as decided, or (b) assign the status page to someone. Seeing that side by side is
the lesson: **the chain's value is the checkpoints.**

## Expected Result

Students see that a chain of small, inspectable steps produces a more trustworthy deliverable
than one big prompt — and that the biggest single win, grounding, makes every step honest.
They also learn restraint: a chain is overkill for a task one prompt handles.

## Troubleshooting

- **Model races ahead and does all steps at once.** Re-state: "Do only STEP 1 and stop."
  Reasoning models especially like to sprint — rein them in.
- **Self-review just praises the draft.** Tighten the criteria and demand a minimum number
  of concrete issues; give it something specific to check (owners, the parked decision).
- **Step 2 re-invents owners.** You fed it the raw notes instead of the Step 1 list. Feed
  the clean extract.
- **Chain and one-shot look identical.** The task may be too simple to need a chain — a valid
  finding. Note it: not everything needs chaining.

## Completion Criteria

Complete when the student has a four-step chain transcript, a final email, a one-shot
comparison, and a note identifying at least one real thing the review step caught.

---

## Teacher's Playbook

### The worked task

Attach [`sample-meeting-notes.md`](../assets/sample-meeting-notes.md). Run the four-step
chain in the Prompt Starter, pausing at each step.

### Model answer - a STRONG Step 1 (extract)

```text
Decisions made:
- Budget allows ONE Nov-Dec support contractor; no permanent hires this quarter (Lee).
Decisions NOT made (parked / open):
- SSO vs audit-logs ordering for Q4 — (unclear, Priya to propose Sep 12).
- Self-Serve price increase — PARKED, revisit after September numbers.
Action items:
- Priya: bring proposed Q4 roadmap to Sep 12 meeting.
- Sam: follow up with Delta re: outage service credit — "this week" (owner confirmed).
- Dana: source a temporary contractor for Nov-Dec.
Gaps:
- Status page ownership during outages — (unclear) NO OWNER. Flagged, not assigned.
```

Why it's strong: it separates **decided** from **parked**, marks the unclear items, and
refuses to assign the status page to anyone. Everything traces to the notes.

### Model answer - a WEAKER one-shot email (what to watch for)

```text
Subject: Q4 Planning Update

Team — great planning session. We've decided to prioritize SSO for Q4, raise Self-Serve
pricing, and hire two new support reps. Marcus will own the status page going forward, and
Sam is handling the Delta account. Exciting quarter ahead!
```

Line by line:

- "decided to prioritize SSO" — the ordering was **unclear/open**, not decided.
- "raise Self-Serve pricing" — that was **parked**, explicitly not decided.
- "hire two new support reps" — the opposite: Lee ruled out permanent hires; only **one
  contractor** was discussed.
- "Marcus will own the status page" — **invented owner**; the notes say nobody owns it.

> Four confident sentences, three of them wrong. The one-shot produced a plausible update
> that would mislead leadership. The chain's Step 1/Step 3 checkpoints are exactly what
> prevent this.

### Live demo click-path

1. New chat (reasoning model if available). Attach the meeting notes.
2. Paste STEP 1. Read the extract aloud; highlight the "(unclear)" status-page line.
3. Paste STEP 2. Show the draft built from the clean list.
4. Paste STEP 3. Read its self-critique; confirm it catches the parked/decided distinction.
5. Paste STEP 4. Show the final email.
6. New chat: ask for the whole email in one prompt. Put both on screen; mark the one-shot's
   invented claims against the notes.

### Common mistakes and how to redirect

- **Treating the chain as ceremony.** -> "The value is the checkpoints. If you're not
  reading the handoffs, you're just typing more."
- **Accepting a cheerleading self-review.** -> "A review that changes nothing isn't a
  review. Make it find two real problems."
- **Over-chaining simple tasks.** -> "Would one good prompt do this? Then don't chain it."
- **Dropping the source boundary mid-chain.** -> "Every step still says 'use only the
  notes.' Drop it and the model starts embroidering."

### Debrief Q&A with model answers

- **Q: Why not just write one big prompt that does all four steps?**
  A: It does each part worse and hides where it went wrong. A chain isolates each job so you
  can inspect and fix the exact failing step.
- **Q: What did the review step catch here?**
  A: The difference between decided and parked (Self-Serve pricing), and the invented status-
  page owner — both things a one-shot draft tends to get confidently wrong.
- **Q: Is grounding a separate technique from chaining?**
  A: Yes, and it's the more important one. Chaining organizes the work; grounding keeps every
  step anchored to real material. Use grounding almost always; chain only when the task is big.
- **Q: When is a chain not worth it?**
  A: When one good prompt already produces a checkable, correct result. Added steps are added
  places to break.

### What good looks like

A strong deliverable: a four-step chain where Step 1 marks the unclear status-page owner,
Step 3 catches the parked-vs-decided overstatement, and the final email states only what the
notes support — next to a one-shot that got at least one claim wrong, with the student able
to point to exactly which checkpoint prevented it.
