# Lab 06 Run-Through — Prompt Systems & Governance

**Purpose:** A complete narrated demonstration of the lab. Read and show the prepared example instead of building the reusable assistant live. Students then package their own prompt as a team asset.

**Time:** 10–15 minutes to present; 60–75 minutes for student work.

## Opening

Say:

> Until now, a prompt has mostly been something one person runs. A team asset needs more: a clear purpose, known inputs, a version, a changelog, a saved assistant, and a review rule. We will package a weekly support-triage prompt and test whether a colleague could use it without us.

The worked example uses `sample-support-emails.csv`.

## The starting prompt

Show this v1.0 prompt:

```text
You are a support team lead. Read the attached support emails and give me a prioritized
list of what to handle first, with the type and urgency of each.
```

Say:

> This is a decent starting point, but it is not yet a library asset. It does not define the input, the exact output, the source boundary, the compliance behavior, or the review step.

## Document the asset

Open `course-materials/prompt-library-template.md` and show the completed shape:

```text
# Triage support queue

ID / version: PL-003 · v1.1
Owner: Support Ops
Status: reviewed
Category: support

What it's for:
Turn a morning support inbox CSV into a prioritized action list, with compliance items
flagged for a human.

Inputs required:
- CSV with id, customer, channel, subject, and message columns.
- Attach the file; no extra prompt is required.

Known limits and review step:
The model classifies free text by judgment. A human reads every row flagged compliance
before any reply is sent.
```

Say:

> The two fields people skip are Inputs required and Known limits & review step. Those are the fields that stop the next person from running the asset incorrectly or trusting it blindly.

## Version it deliberately

Show the v1.1 prompt:

```text
You are a support team lead triaging the queue. Using ONLY the attached CSV:
1. Classify each email by type (billing, shipping, compliance, feature request,
   cancellation, praise) and urgency (high/medium/low).
2. Flag any compliance or legal question separately — do not answer it; route it to a human.
3. Give a prioritized action list: first action per email, one line each.
4. Note any email where we risk losing the customer.
Do not invent details not in the messages. If information is missing, say so.
Output a table (id, customer, type, urgency, first action) then a 3-line summary.
```

Show the changelog:

```text
v1.1 — added “use ONLY the attached CSV; if missing, say so” and explicit compliance routing
      → stopped invented details and made the legal handoff visible
v1.0 — initial version
```

Say:

> “Improved it” is not a useful changelog. This tells the next maintainer what changed and what effect to look for if they retest or roll back.

## Save and cold-test the assistant

Say:

> Now move the role, constraints, source rule, and output format into the saved instructions of a ChatGPT Project or Custom GPT. The role must live in the reusable assistant, not in a prompt we still have to paste every time.

Show the saved-assistant instruction block:

```text
You are a support team lead triaging the attached queue. Use only the attached CSV and say
when information is missing. Classify every row, flag compliance or legal questions without
answering them, prioritize the first action, identify retention risks, and return the table
and three-line summary described in the library entry.
```

Then say:

> Start a fresh session and attach only the CSV. Do not paste the long prompt. If the assistant produces the right table from the input alone, it passes the cold-start test. If it needs the original prompt pasted again, the role was not actually saved.

Show the expected result shape:

```text
- A table covering all rows.
- Northstar Health flagged as compliance and routed to privacy/legal, not answered.
- Retention-risk messages identified.
- A short summary beneath the table.
```

## Responsible use

Read this note aloud:

```text
Data: only the approved-workspace CSV goes in; no client PII from other systems.
Sign-off: a support manager reviews every row flagged compliance before any reply.
Always verify: refund amounts are checked against billing before we act on them.
When NOT to use AI: any compliance or legal question — route it to a human, do not answer it.
```

Say:

> Governance is not a disclaimer added at the end. It travels with the prompt so the guardrail is still present when someone else reuses the asset.

## Close and handoff

Say:

> The finished asset has two parts. The library entry explains what it is, what it needs, how it changed, and where it can fail. The saved assistant makes the approved behavior runnable. We need both.

Assign the lab deliverable: one completed library entry, v1.0 to v1.1 changelog, a cold-start test of the saved assistant, and the responsible-use and when-not-to-use notes.

**Fallback:** If the saved-assistant feature is unavailable, have students write the saved-instructions text and test it as the first message in a fresh chat. Record that limitation in the library entry.
