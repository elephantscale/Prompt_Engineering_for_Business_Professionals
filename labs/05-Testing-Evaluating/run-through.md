# Lab 05 Run-Through — Testing & Evaluating Prompts

**Purpose:** A complete narrated demonstration of the lab. Read and show the prepared outputs instead of running the evaluation live. Students then perform their own scored comparison and repair.

**Time:** 10–15 minutes to present; 50–60 minutes for student work.

## Opening

Say:

> “Looks good” is not an evaluation. Today we compare two prompts for the same queue, score their outputs against the same rubric, connect improvements to specific prompt clauses, and then diagnose a broken prompt before repairing it.

Use `sample-support-emails.csv` as the source. Keep the same model and clean chat for both runs so the comparison is fair.

## Prompt A1 — thin baseline

Show this prompt:

```text
Look at these support emails and tell me what's important.
```

Show this representative output:

```text
Looks like a busy inbox! The main themes are billing questions, some shipping delays, and a
few happy customers. I'd start with the billing ones since money issues upset people the
most, then work through the rest. Overall sentiment seems positive and most of these look
routine — nothing here that can't wait until you've had your coffee. You've got this!
```

Say:

> This is fluent but operationally weak. It gives themes instead of a queue, drops individual messages, misses the compliance question, and confidently says nothing needs urgent attention. The problem is not simply that it is short; the prompt never asked for the information we need.

## Prompt A2 — framed comparison

Show this prompt:

```text
You are a support team lead triaging Monday's queue. Using ONLY the attached support-emails CSV:
1. Classify each email by type (billing, shipping, compliance, feature request,
   cancellation, praise) and urgency (high/medium/low).
2. Flag anything that is a compliance or legal question rather than a normal ticket.
3. Give me a prioritized action list: what to handle first and why, in one line each.
4. Note any email where we risk losing the customer.
Do not invent details that aren't in the messages. If information is missing, say so.
Output a table (id, customer, type, urgency, first action) followed by a 3-line summary.
```

Show this representative output shape:

```text
| id | customer | type | urgency | first action |
|----|----------|------|---------|--------------|
| 3 | Northstar Health | compliance | high | Route to privacy/legal; do not answer the compliance question |
| 1 | Acme | billing | high | Confirm the duplicate charge and begin the policy-based refund process |
| 2 | River City Events | feature/pricing | medium | Check the September promotion and route the nonprofit-pricing question |
| ... | ... | ... | ... | ... |

Summary:
1. Handle the compliance question first through a human reviewer.
2. Resolve the duplicate billing issue and identify retention risks.
3. Mark missing information rather than inventing a policy or promise.
```

Say:

> A2 wins because each useful output column is requested explicitly. The source boundary protects accuracy, the compliance clause catches the row that must not be answered casually, and the format clause makes the result actionable.

## Score the outputs

Show the rubric and say:

> Score every criterion from 1 to 5, and write one sentence explaining every score. A score without a reason is a preference, not an evaluation.

Show this illustrative comparison:

| Criterion | A1 | A2 | Why A2 improves |
|---|---:|---:|---|
| Accuracy | 3 | 5 | The source boundary limits unsupported claims. |
| Completeness | 2 | 5 | A2 requires every email and flags compliance and retention. |
| Format | 2 | 5 | A2 requests a table and summary. |
| Source handling | 2 | 5 | A2 says to use only the CSV. |
| Tone/brand | 3 | 4 | A2 is operational rather than cheerleading. |
| Uncertainty | 2 | 5 | A2 says to report missing information. |
| Reusability | 2 | 5 | A2 can be rerun as a Monday queue macro. |
| Review burden | 2 | 5 | A2 is close to paste-ready. |
| **Total** | **18** | **39** | The clauses, not length alone, create the gap. |

Say:

> The lesson is not “longer prompts win.” Name the clause that bought the point: source boundary for Accuracy and Source handling, compliance flag for Completeness, and output format for Format and Reusability.

## Diagnose the broken prompt

Show this prompt:

```text
Reply to this customer and give them whatever they want so they're happy. You are the
world's best customer service genius. Make it long and detailed and use lots of exclamation
points to show enthusiasm! Also mention our new products. The customer was charged twice.
```

Ask the room to name the failures before showing the diagnosis. Then reveal:

- “Give them whatever they want” has no policy boundary and invites over-promising.
- “World's best genius” and repeated exclamation points create a tone and brand mismatch.
- “Long and detailed” is the wrong format for an upset customer who needs resolution.
- The product mention is an inappropriate upsell.
- No source is attached, so refund terms may be invented.
- There is no output format, next step, or timeframe.

## Repair and confirm

Show the repaired prompt:

```text
You are a support lead at Northwind Supply Co. Match the attached brand voice. Using ONLY
the attached return policy for refund facts, reply to the customer below. State what we'll
do and by when. No upsell. Under 150 words. If the policy doesn't cover something they
asked, say so rather than guessing.
[customer message]
```

Show the expected result:

```text
Hi — you were charged twice for invoice #4471, and that's on us. I've started the refund
today; because it is a billing error, it is not subject to a waiting period, so you'll see
it back on your card within 5 business days. We fixed the underlying bug on Aug 28 so it
won't recur. Thanks for your patience — Northwind Support.
```

Say:

> The repair does not try to make the model more enthusiastic. It makes the task safer and more useful: the policy supplies the facts, the brand guide supplies the register, the length and no-upsell rules fit the situation, and the timeframe gives the customer a concrete expectation.

## Close and handoff

Say:

> A reliable evaluation produces a defensible choice, not a favorite. A reliable repair starts by naming the failure mode, then adds only the clause needed to prevent it.

Assign the lab deliverable: two fully scored rubrics with reasons, one line per changed score naming the responsible clause, the broken prompt's diagnosis, and the repaired prompt with a passing result.

**Fallback:** If the room gives A1 all high scores, ask them to locate its classification of every row, its compliance handling, and its retention flag in the actual output. Missing evidence must lower the score.
