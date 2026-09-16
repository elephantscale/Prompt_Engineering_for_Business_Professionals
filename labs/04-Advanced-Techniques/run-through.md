# Lab 04 Run-Through — Advanced Prompt Engineering Techniques

**Purpose:** A complete narrated demonstration of the lab. Read and show the prepared examples instead of running the chain live. Students do not need to reproduce this demonstration before starting their own work.

**Time:** 10–15 minutes to present; 60–75 minutes for student work.

## Opening

Say:

> A large prompt can ask for extraction, drafting, checking, and revision all at once. The problem is that when the answer is wrong, we cannot tell which part failed. Today we separate those jobs into checkpoints. The chain is valuable because we can inspect each handoff.

The source is `sample-meeting-notes.md`. Our deliverable is a stakeholder update email. The rule for every step is: use only the notes, and mark anything unclear rather than guessing.

## Step 1 — Extract

Show the meeting notes, then say:

> First we are not writing an email. We are extracting decisions and actions. This keeps ambiguous material visible before it gets polished into something that sounds certain.

Show or read this prompt:

```text
We'll work in four steps. Do only the step I name; wait for me before the next.

STEP 1 - EXTRACT. From the attached meeting notes, list every decision and every action
item with its owner and any date. Mark anything unclear as "(unclear)". Use only the notes;
do not infer owners that aren't stated.
```

Show this representative result:

```text
Decisions made:
- Budget allows ONE Nov-Dec support contractor; no permanent hires this quarter (Lee).

Decisions not made / parked:
- SSO vs. audit-logs ordering for Q4 — unclear; Priya to propose at the Sep 12 meeting.
- Self-Serve price increase — parked; revisit after September numbers.

Action items:
- Priya: bring the proposed Q4 roadmap to the Sep 12 meeting.
- Sam: follow up with Delta about the outage service credit this week.
- Dana: source a temporary contractor for Nov-Dec.

Gap:
- Status-page ownership during outages — unclear; no owner is stated.
```

Say:

> The important output is not just the list. It is the boundary between decided, parked, and unclear. Notice that the status page has no invented owner. If Step 1 assigns one, every later step inherits the error.

## Step 2 — Draft

Say:

> Now the model receives the inspected list, not a fresh invitation to reinterpret the raw notes. It can draft, but only from the handoff we just checked.

Show this prompt:

```text
STEP 2 - DRAFT. Using only the list above, write a stakeholder update email: decisions
first, then next steps with owners and dates. Under 200 words, plain and direct.
```

Show a representative result:

```text
Subject: Q4 planning update

Team,

Here is the current status from our planning discussion. We have budget for one
November–December support contractor and no permanent hires this quarter. Priya will bring
the proposed Q4 roadmap to the September 12 meeting, Sam will follow up with Delta about the
outage service credit this week, and Dana will source the temporary contractor.

The SSO versus audit-logs priority remains open, with Priya proposing a direction on
September 12. The Self-Serve price increase is parked until we have September numbers. We
also still need an owner for the status page during outages.

Thanks,
[Name]
```

Say:

> This is already usable, but we do not trust a polished draft merely because it sounds professional. The next step is a deliberate inspection.

## Step 3 — Review

Show this prompt:

```text
STEP 3 - REVIEW. Critique that draft. Did it add anything not in the list? Is every owner
from the notes? Is the tone plain and on brand? List specific fixes as bullets. Find at least
two concrete problems if they exist.
```

Show or read the key review:

```text
- The email should distinguish more clearly between the decided contractor budget and the
  open SSO/audit-logs question.
- The status-page ownership gap is present, but it should be labeled as an unresolved risk,
  not just a closing note.
- Confirm that no additional owner or date has been added.
```

Say:

> A review that only says “looks good” has not earned its place. The useful review names a concrete claim, checks it against the handoff, and gives the revision step something specific to change.

## Step 4 — Revise

Show this prompt:

```text
STEP 4 - REVISE. Apply every fix from your review. Return the final email only.
```

Show the final shape:

```text
Subject: Q4 planning update

Team,

We have budget for one November–December support contractor and no permanent hires this
quarter. Dana will source the contractor. Priya will bring the proposed Q4 roadmap to the
September 12 meeting, and Sam will follow up with Delta about the outage service credit this
week.

The SSO versus audit-logs priority is still open; Priya will propose a direction on September
12. The Self-Serve price increase is parked until we have September numbers. Status-page
ownership during outages remains unresolved and needs an owner.

Thanks,
[Name]
```

Say:

> The final email is not better because it is longer. It is better because the chain made the important distinctions inspectable: decided versus parked, known owner versus unclear owner, and action versus open question.

## Comparison — one-shot

Say:

> Now compare the chain with a single prompt. The one-shot is faster, but it has no checkpoint between reading and writing.

Show this prompt:

```text
Turn these meeting notes into a stakeholder update email: decisions first, then next steps
with owners and dates. Under 200 words, plain and direct. Use only the attached notes; don't
infer owners or decisions that aren't stated.
```

Show this representative weak result:

```text
Subject: Q4 Planning Update

Team — great planning session. We've decided to prioritize SSO for Q4, raise Self-Serve
pricing, and hire two new support reps. Marcus will own the status page going forward, and
Sam is handling the Delta account. Exciting quarter ahead!
```

Point out:

- SSO priority was open, not decided.
- The Self-Serve price increase was parked.
- The notes discussed one temporary contractor, not two permanent hires.
- Marcus was not assigned the status page.

## Close and handoff

Say:

> The chain is worth the extra effort when the task is large, ambiguous, or consequential and we can inspect the handoffs. It is overkill for a simple task that one good prompt handles. Grounding is the more important habit: every step must stay tied to the source.

Then assign the lab deliverable: the four-step transcript, final email, one-shot version, and two sentences explaining what the review caught and whether the chain was worth it.

**Fallback:** If students' review step rubber-stamps the draft, require it to check the parked pricing decision and the status-page owner explicitly, and ask for two concrete issues.
