# Competing Prompts & a Broken Prompt (Lab 05)

Lab 05 is about *evaluating* prompts, not just writing them. Use these three items.

---

## Pair A — two prompts for the SAME job

**Job:** turn [`sample-support-emails.csv`](sample-support-emails.csv) into a prioritized
action list for a support lead starting their Monday.

### Prompt A1 (thin)

```text
Look at these support emails and tell me what's important.
```

### Prompt A2 (framed)

```text
You are a support team lead triaging Monday's queue. Using ONLY the attached
support-emails CSV:
1. Classify each email by type (billing, shipping, compliance, feature request,
   cancellation, praise) and urgency (high/medium/low).
2. Flag anything that is a compliance or legal question rather than a normal ticket.
3. Give me a prioritized action list: what to handle first and why, in one line each.
4. Note any email where we risk losing the customer.
Do not invent details that aren't in the messages. If information is missing, say so.
Output a table (id, customer, type, urgency, first action) followed by a 3-line summary.
```

Run both. Score each with `course-materials/evaluation-rubric.md`. The learning: A2 wins not
because it's longer but because every clause removes a failure mode (source boundary,
compliance catch, format, retention risk).

---

## The broken prompt — fix it

This prompt is *supposed* to draft a refund reply, but it fails in several concrete ways.
Diagnose each failure, then repair it.

```text
Reply to this customer and give them whatever they want so they're happy. You are the
world's best customer service genius. Make it long and detailed and use lots of exclamation
points to show enthusiasm! Also mention our new products. The customer was charged twice.
```

What's wrong (students should find these):

- **"give them whatever they want"** — no policy boundary; invites over-promising.
- **"world's best genius" / exclamation points** — off-brand persona (contradicts the brand
  voice guide), style over substance.
- **"long and detailed"** — wrong length for a service reply; the customer wants resolution.
- **"mention our new products"** — upselling an upset customer; wrong moment.
- **No source, no policy** — the model will guess the refund terms instead of quoting
  [`sample-return-policy.md`](sample-return-policy.md).
- **No format, no next step, no timeframe.**

A repaired version grounds the reply in the return policy, matches
[`sample-brand-voice.md`](sample-brand-voice.md), states the concrete refund + timeframe,
and drops the upsell.
