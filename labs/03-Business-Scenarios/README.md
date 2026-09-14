# Lab 03 - Prompting for Real Business Scenarios

> This is where the anatomy meets your actual job. You'll produce a small, **on-brand**
> content set — the kind of thing you'd otherwise spend an afternoon on — and learn to make
> AI output sound like *your organization*, grounded in *your material*.

## Goal

Produce three business-ready artifacts that match a brand voice and stay grounded in the
supplied material: a **customer reply**, a **meeting summary**, and an **outbound email**.
Along the way, catch the one request in the queue that should be **escalated, not answered**.

## Time

60-75 minutes

## Tools

Your assigned assistant — **Claude, ChatGPT, or Gemini**. Provided material:

- [`sample-brand-voice.md`](../assets/sample-brand-voice.md) — the house style to match
- [`sample-support-emails.csv`](../assets/sample-support-emails.csv) — the customer queue
- [`sample-return-policy.md`](../assets/sample-return-policy.md) — the policy to ground replies in
- [`sample-meeting-notes.md`](../assets/sample-meeting-notes.md) — messy notes to summarize

You'll use the R-T-C-C-F-E template from Module 2
([`prompt-template.md`](../../course-materials/prompt-template.md)) and, for your own org,
fill in [`brand-voice-worksheet.md`](../../course-materials/brand-voice-worksheet.md).

## Steps

1. **Load the brand voice first.** Paste `sample-brand-voice.md` into the chat (or save it
   in a Project / Custom GPT / Gem) so every draft in this session inherits it.
2. **Customer reply (grounded).** Take the duplicate-charge email from Acme (id 1) in the
   support CSV. Draft a reply that matches the brand voice **and** is grounded in the return
   policy — it must state the real refund terms and timeframe, not invent them.
3. **Meeting summary.** Summarize `sample-meeting-notes.md` into **decisions**, **action
   items with owners**, and **open questions** — using only the notes.
4. **Outbound email.** Draft one proactive email (e.g., the September-promo reply to River
   City, id 2), on brand, honest about what the policy does and doesn't cover.
5. **Catch the compliance item.** Scan the queue. Find the request that is a privacy/legal
   question rather than a ticket (hint: Northstar Health, id 3). Draft the *right* move:
   escalate to a human, don't answer it.
6. **Judge each artifact against the brand-voice guide** — not against "does it read nicely."

## Prompt Starter

```text
You are a support lead at Northwind Supply Co. Match the brand voice in the guide below
exactly, even if another style would sound more polished.

[paste sample-brand-voice.md]

Using ONLY the attached return policy for any facts about refunds or timeframes, draft a
reply to this customer. State what we will do and by when. Do not promise anything the
policy doesn't support. No upselling. Keep it under 150 words.

Customer message:
[paste the Acme duplicate-charge email]

If the policy doesn't cover something the customer asked, say so plainly rather than guessing.
```

## Deliverable

- Three artifacts: customer reply, meeting summary, outbound email — each visibly on-brand.
- A one-line note per artifact: which brand-voice rule it was most at risk of breaking, and
  how you kept it.
- Your handling of the compliance item (the escalation, not an answer).

## Review

Check each artifact against [`sample-brand-voice.md`](../assets/sample-brand-voice.md): does
it avoid the banned hype words? Does it give a real next step and timeframe? Is the refund
reply grounded in the actual policy? Did the summary invent any owner or decision not in the
notes?

## Instructor Flow

Start by showing a **generic** AI reply to the Acme email (no brand voice, no policy) next
to an **on-brand, grounded** one. The difference sells the module. Then have students build
their three artifacts. Close on the compliance catch — it's the memorable beat.

Recommended timing:

| Activity | Minutes |
|----------|---------|
| Generic vs on-brand demo | 10 |
| Load brand voice + customer reply | 20 |
| Meeting summary | 15 |
| Outbound email | 10 |
| Compliance catch + debrief | 15 |

## Detailed Exercise

### Part 1 - Ground the reply in policy

The Acme email is an angry, repeat billing issue. The return policy says billing errors are
refunded within 5 business days and are never subject to the 14-day window. A strong reply
uses those exact facts. A weak one invents "7-10 days" or offers a discount the policy never
mentions.

### Part 2 - Summarize without inventing

The meeting notes are deliberately messy: some action items "flew around but weren't written
down." A strong summary lists owners where they're clear (Priya brings the roadmap; Sam owns
the Delta follow-up) and flags the gaps ("no owner for the status page") instead of assigning
one. Demand: *"use only the notes; if an owner is unclear, say so."*

### Part 3 - Personalize on brand

Draft the River City promo reply. It must be honest: the policy doesn't mention nonprofit
pricing, so the reply should say that's being checked / routed, not invent a nonprofit rate.

### Part 4 - The compliance reflex

Northstar Health asks about uploading patient records to a public AI tool. The task is **not**
to answer it. Draft a short, on-brand reply that (a) doesn't give a compliance ruling, and
(b) routes it to the right human. That judgment is the point of the exercise.

## Expected Result

Students leave with three artifacts they could actually send after a light review, and — more
importantly — a repeatable recipe: load the voice, ground in the source, demand the format,
and escalate what shouldn't be a prompt at all.

## Troubleshooting

- **Output is generic despite the guide.** The model probably summarized the guide instead
  of obeying it. Re-issue: "Match this voice exactly; use the example sentence as your
  target register," and paste the guide again in the same chat.
- **Reply invents refund terms.** Add the source boundary — "use only the attached policy
  for any refund facts" — and re-run.
- **Summary assigns owners that aren't in the notes.** Add "if an owner is unclear, write
  '(owner unclear)'." This is a teachable catch, not a failure.
- **Student answers the Northstar question.** Redirect: "That's a HIPAA question. Your job is
  to route it, not rule on it."

## Completion Criteria

Complete when the student has three on-brand, grounded artifacts, a per-artifact risk note,
and a correct escalation of the compliance item — and has filled in at least the first
sections of their own brand-voice worksheet.

---

## Teacher's Playbook

### The worked task (customer reply)

Load [`sample-brand-voice.md`](../assets/sample-brand-voice.md) and
[`sample-return-policy.md`](../assets/sample-return-policy.md), then run the Prompt Starter
on the Acme duplicate-charge email (id 1).

### Model answer - a STRONG response

```text
Hi — you were charged twice for invoice #4471, and that's on us.

I've confirmed the duplicate and started the refund today. Billing errors aren't subject to
any waiting-period rules, so you'll see the refund back on your card within 5 business days.
We fixed the underlying payment-retry bug on Aug 28, so this specific issue won't recur.

I know this is the second billing issue you've raised this quarter, and I don't want to
brush past that — if you'd like, I'll have your account reviewed for any other double
charges and report back by Friday.

Thanks for your patience — Northwind Support.
```

Why it's strong: it matches the brand voice (plain, warm, owns the mistake, real
timeframe), pulls the **5 business days** straight from the policy, adds no upsell, and gives
a concrete next step with a date.

### Model answer - a WEAKER response

```text
Dear Valued Customer,

We sincerely apologize for any inconvenience this may have caused! Your satisfaction is our
top priority. We will process your refund as soon as possible, typically within 7-10
business days. In the meantime, have you seen our new Premium tier? It includes advanced
billing protection! We're confident you'll love it.

Warm regards, The Northwind Team
```

Line by line:

- "Dear Valued Customer / any inconvenience" — **banned corporate hedging**; the brand guide
  explicitly forbids this.
- "as soon as possible, typically 7-10 business days" — **wrong facts**; the policy says 5
  business days for billing errors. Vague timeframe, too.
- "have you seen our new Premium tier" — **upselling an angry customer**; wrong moment,
  off-brand.
- "we're confident you'll love it" — hype, no next step, no ownership of the error.

> Put them side by side. The weak one is longer and "nicer-sounding." The strong one is the
> one you'd actually want sent to an annoyed enterprise customer.

### Live demo click-path

1. New chat, memory off. Paste the brand-voice guide; say "obey this, don't summarize it."
2. Paste the return policy. Paste the Acme email. Run the Prompt Starter.
3. Read the result against the guide's do/don't list, out loud, checking each rule.
4. Ask a follow-up live: `Shorten to 90 words and lead with the refund.` Show it tighten.
5. Switch tasks: paste the meeting notes, ask for decisions/actions/owners "using only the
   notes." Show it flag the status-page gap instead of inventing an owner.
6. End on Northstar: ask the assistant to "handle" id 3 — then correct the room: the right
   move is escalation.

### Common mistakes and how to redirect

- **Describing the voice instead of giving an example.** -> "Paste a real sentence in your
  voice. That one line teaches it more than ten adjectives."
- **Letting the reply set policy.** -> "The model doesn't decide refunds. Give it the policy;
  it finds the words."
- **Inventing owners in the summary.** -> "Where in the notes does it say who owns that?
  Mark it '(owner unclear)'."
- **Answering the HIPAA question.** -> "That's not your call or the model's. Route it."
- **Accepting hype words because it 'reads well.'** -> "Check it against the banned-words
  list. 'Seamless' is an automatic fail here."

### Debrief Q&A with model answers

- **Q: Why load the brand voice as a file instead of saying 'be professional'?**
  A: "Professional" is ambiguous; a concrete guide plus an example sentence removes the
  ambiguity and makes output repeatable across people and days.
- **Q: Why ground the reply in the policy when the model 'knows' refund norms?**
  A: It doesn't know *your* policy — it guesses an industry-average one, which is often wrong
  and sometimes a promise you can't keep. Grounding replaces the guess with your facts.
- **Q: The meeting notes were a mess — how should the model handle missing owners?**
  A: Flag them, don't fill them. A summary that invents a decision or owner is more
  dangerous than one that says "unclear."
- **Q: What makes the Northstar request different from the others?**
  A: It's a regulated-data/compliance question, not a support task. The correct output is an
  escalation to a human, not an answer.

### What good looks like

A strong deliverable: three artifacts that pass the brand-voice do/don't check; a customer
reply with the correct 5-business-day refund pulled from the policy; a meeting summary that
flags the missing status-page owner rather than inventing one; and a correct escalation of
the Northstar item. A weak deliverable is fluent but off-brand, invents refund terms, and
"helpfully" answers the HIPAA question.
