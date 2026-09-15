# Lab 01 - How Modern AI Assistants Actually Work

> **One idea, three knobs.** This lab proves the core claim of the whole course: you don't
> need a "smarter AI" to get dramatically better results — you need to turn the right knob.
> You'll run the **same business request** three times, changing exactly **one** thing each
> time — the **phrasing**, the **context**, and the **model** — and see which change moves
> the answer the most.

## Goal

Experience first-hand how phrasing, context, and model choice each change an AI assistant's
output — and be able to say, with evidence, which single change mattered most for your task.
This builds the intuition that Module 2 turns into a repeatable prompt anatomy.

## What you're changing (the three knobs)

- **Knob 1 — Phrasing.** A vague ask vs. a framed ask (audience, job, length). Same model,
  same source.
- **Knob 2 — Context.** No source material vs. attaching the real document. Same phrasing,
  same model.
- **Knob 3 — Model.** A fast model vs. a reasoning ("thinking") model. Same phrasing, same
  source.

> Change **one knob at a time**. If you change two, you won't know which one did the work —
> and "AI is hit or miss" is exactly what happens to people who change everything at once.

## Time

45-60 minutes

## Tools

Your assigned tool is **ChatGPT Enterprise** (your Elephant Scale — Business account)
(Claude or Gemini also work — instructor may demo). Examples below lead with ChatGPT and note
the others. Source material: [`sample-quarterly-report.md`](../assets/sample-quarterly-report.md).
If you also have a second assistant, you can add an optional fourth run to compare vendors.

> **Before you start — clean slate.** In ChatGPT open a **New chat**; for a fair test use a
> **Temporary Chat** and turn off **memory & custom instructions** (Settings → Personalization).
> (Claude: new chat + Settings → Profile; Gemini: turn off saved info.) Otherwise your saved
> settings change the output and you'll be testing your preferences, not the knobs.

## Steps

1. Open [`sample-quarterly-report.md`](../assets/sample-quarterly-report.md) in the course
   repo. You'll summarize it for a VP of Operations.
2. **Run 1 — vague phrasing, no context.** In a clean chat, type only:
   `Summarize this quarterly report.` — but do **not** attach the file; paste nothing.
   (The point is to see what it does with almost nothing to go on. It will either ask for the
   report or invent a generic summary — note which.)
3. **Run 2 — framed phrasing, with context.** New clean chat. **Attach** (or paste) the
   report and run the framed prompt in the Prompt Starter below. Compare to Run 1.
4. **Run 3 — change the model.** Keep the framed prompt and the attached report **identical**,
   but switch models. In ChatGPT, open the **model picker** at the top of the chat and switch
   from the default/instant **GPT-5.x** model to the **Thinking** (reasoning) option. (Claude
   and Gemini have an equivalent fast → reasoning picker.) Run it. Compare to Run 2.
5. *(Optional) Run 4 — change the vendor.* If you have a second assistant, run the identical
   framed prompt + report there. Note any difference in how it handles uncertainty.
6. Put the outputs side by side. Decide **which single change moved the output the most** for
   this task, and write one or two sentences of evidence.
7. Save your **best** version of the request — you'll reuse and upgrade it in Lab 02.

## Prompt Starter

Use this as the framed prompt in Run 2 and Run 3 (don't edit it between those two runs):

```text
Summarize the attached quarterly operations report for a VP of Operations who has five
minutes before a board call. Give me:
- the three most important things that changed since last quarter,
- one risk she should flag to the board,
- one decision she needs to make now.
Keep it under 120 words, plain language, no jargon. If something isn't in the report,
say so rather than guessing.
```

## Deliverable

- A short **comparison** (a few lines per run is fine) of Runs 1-3 (and 4 if you did it).
- A one-sentence verdict: **which knob moved the output the most** for this task, with evidence.
- Your **best version** of the request, saved for Lab 02.

## Review

Don't judge by which answer "reads nicest." Check: did it stay inside the report or invent
figures? Did it hit the requested format (three changes / one risk / one decision, under 120
words)? Did it say "not in the report" when appropriate, or bluff? The framed, grounded run
should be visibly more useful — and should need less editing before you'd send it.

## Instructor Flow

Run the three knobs live before students start, so they see the effect once with the whole
room. Ask after each run:

- Run 1 → "With nothing to go on, what did it do — ask, or invent?"
- Run 2 → "What specifically got better, and which clause caused it?"
- Run 3 → "Did the reasoning model change the *quality*, or just the *wording*?"

Front-load the clean-slate step (memory/custom instructions off) — it's the most common
cause of "we got different answers."

Recommended timing:

| Activity | Minutes |
|----------|---------|
| Instructor three-knob demo | 12 |
| Clean-slate setup | 5 |
| Run 1 + Run 2 | 15 |
| Run 3 (model switch) | 10 |
| Compare + write verdict | 10 |
| Group debrief | 8 |

## Detailed Exercise

### Part 1 - The vague baseline (Knob: none yet)

Run `Summarize this quarterly report.` with nothing attached. This is how most people use AI
— and it shows. Record what happened: did it ask for the report, or produce a confident
generic summary of a report it never saw? That's your floor.

### Part 2 - Add framing and context (Knobs 1 + 2)

Attach the report and run the framed Prompt Starter. You just turned two knobs at once
(better phrasing **and** real context) — that's fine for seeing the big jump, but notice you
can't yet attribute the improvement to one or the other. Record response quality, format
compliance, and whether it stayed inside the document.

### Part 3 - Isolate the model (Knob 3)

Now change **only** the model — in ChatGPT, the default/instant **GPT-5.x** model → the
**Thinking** (reasoning) option in the model picker — with the prompt and file unchanged. This
is a clean single-knob test. Ask: is the reasoning model's answer meaningfully more accurate
or better-structured, or just phrased differently? For a short summary the honest answer is
often "barely different" — which is itself the lesson (don't pay the reasoning tax when you
don't need it).

### Part 4 - Make the call

Write your verdict. For *this* task (a short, grounded summary) the biggest mover is almost
always **context** (attaching the report), followed by **phrasing**, with **model** last.
For a multi-step analysis the ranking flips. Naming that is the skill.

## Expected Result

Students discover that the vague run is nearly useless, that attaching the source and framing
the ask produces the single largest jump, and that for this particular task the fast vs.
reasoning model difference is smaller than they expected. The takeaway: **the prompt is the
steering wheel** — and Module 2 is about building that wheel deliberately.

## Troubleshooting

- **"Both model runs look identical."** That's a valid finding for a short summary — note it.
  Try the reasoning model on a harder ask ("which of the open decisions is most urgent and
  why?") to see where it pulls ahead.
- **"It won't let me pick a model."** Free tiers sometimes hide the picker; use whatever two
  options you have, or treat Run 3 as "regenerate" and note there's no model choice on this
  plan.
- **"I got different answers running the same prompt twice."** Memory/custom instructions are
  probably on, or it's just temperature. Use a temporary chat and rerun.
- **"It invented numbers in Run 1."** Good — that's hallucination, live. Keep it as evidence
  for why context (Run 2) matters.
- **"It refused / asked me to clarify."** Note it. A clarifying question is often the *right*
  behavior when the ask is vague.

## Completion Criteria

The lab is complete when the student has: three recorded runs of the same request, a
one-sentence evidence-backed verdict on which knob mattered most, and a saved best version of
the request to carry into Lab 02.

---

## Teacher's Playbook

Everything below lets you run this lab live with confidence, using the exact sample file in
`labs/assets/`.

### The worked task (run this on screen)

Source: [`sample-quarterly-report.md`](../assets/sample-quarterly-report.md). The framed
prompt is the Prompt Starter above. Run it three ways, changing one knob at a time.

### Run 1 — the vague baseline (what to expect)

Prompt: `Summarize this quarterly report.` with **nothing attached.**

A careful assistant — demo this in **ChatGPT (GPT-5.x)**; Claude does this well too —
responds roughly:

```text
I'd be glad to — but I don't see a report attached. Could you paste the text or upload the
file? If you'd like, I can also tell you what a useful operations-report summary usually
covers (revenue vs. plan, customer/churn, product, risks, open decisions).
```

A less careful run may **invent** a plausible generic summary of a report it never saw —
complete with fake numbers. Either way, the floor is set: no source, no real value.

> Teaching point: the "invent a summary" response is hallucination you can point at. The
> "I don't see a file" response is the model being appropriately honest. Praise the second.

### Run 2 — framed + grounded — a STRONG answer (what ChatGPT (GPT-5.x) tends to return; Claude and Gemini similar)

With the report attached and the framed prompt:

```text
Three things that changed since Q2:
1. Revenue grew 6% ($3.96M → $4.2M) but came in under the $4.5M plan — growth is almost
   entirely the new Self-Serve tier (+310 accounts); Enterprise was flat.
2. Support got faster — median first response fell from 9h to 4h — and NPS rose 31 → 38.
3. Duplicate-billing bug drove a 22% ticket spike and ~18% higher cloud cost before the
   Aug 28 fix.

Risk to flag: two enterprise accounts (~$380K ARR) are at renewal risk over missing
SSO/SAML, which has now slipped two quarters.

Decision to make now: whether to pull SSO into early Q4 by delaying audit logs.

(Under 120 words. Everything above is stated in the report.)
```

Why it's strong: it's inside the source (no invented figures), it hits the exact requested
shape (three changes / one risk / one decision / under 120 words), and it's genuinely
board-ready with almost no editing.

### Run 3 — switch to the reasoning model (what to expect)

Same prompt, same file, reasoning model — in ChatGPT, switch the model picker from the
default/instant **GPT-5.x** model to the **Thinking** option. For a short summary the result is usually **very
similar** — perhaps slightly tighter prioritization. The honest debrief line: *"It didn't
get more correct; it got marginally better at judgment. Not worth the wait for this task —
but watch what happens when we ask it to rank the open decisions."* Optionally demo that
harder ask to show where reasoning earns its cost.

### A WEAKER answer (what to watch for, and why it's weak)

```text
Northwind had a solid quarter! Revenue is up and customers love the product — NPS is
trending strongly upward. The company is growing fast in self-serve and should double down
there. Support is in great shape now. Overall the outlook is very positive and the team is
executing well across the board!!
```

Walk the room through each line:

- "Revenue is up" with **no number and no mention it missed plan** — omits the key fact.
- "trending strongly upward" — **vague inflation** of a single 31→38 move.
- "should double down" — **unasked-for advice**, not the requested decision.
- No risk flagged — **ignores the $380K SSO churn risk**, the single most important item.
- Exclamation points, "executing well across the board" — **off-register filler**, over the
  120-word discipline in spirit.

> Put the strong and weak answers side by side. The weak one *sounds* upbeat and confident;
> the strong one is useful precisely because it names the number it missed and the risk it's
> carrying. Confidence is not correctness.

### Live demo script (exact click-path)

1. Open **ChatGPT** (Elephant Scale — Business account; Claude or Gemini also work).
   Settings → Personalization → **turn off memory & custom instructions**, and use a
   **Temporary Chat** (say why: fair test). Start a new chat.
2. **Run 1:** type `Summarize this quarterly report.` with nothing attached. Read the
   response aloud — did it ask, or invent?
3. New chat. **Run 2:** attach `labs/assets/sample-quarterly-report.md`, paste the framed
   Prompt Starter, send. Read it against the four requirements, checking each off.
4. **Run 3:** in a new chat, use the ChatGPT model picker to switch from the default/instant
   GPT-5.x model to the **Thinking** (reasoning) option, paste the **identical** prompt + file.
   Put Run 2 and Run 3 on screen together.
5. Ask the room: "Which change — from Run 1→2, or Run 2→3 — moved the output more?" Let them
   answer before you do. (Answer: Run 1→2, by far.)
6. Optional: ask the reasoning model `Of the open decisions in this report, which is most
   urgent and why?` to show where reasoning pulls ahead of fast.

### Common student mistakes and how to redirect

- **Changing two knobs at once.** → "Change one thing. If phrasing *and* model both changed,
  you can't say which helped. Re-run isolating one."
- **Leaving memory on.** → "Your saved settings are contaminating the test. Temporary chat,
  then rerun."
- **Grading on polish.** → "Fluent isn't correct. Check the numbers against the report before
  you call it better."
- **Expecting the reasoning model to be night-and-day.** → "For a short summary it often
  isn't. That's a real finding — don't force a difference that isn't there."
- **Skipping Run 1 because it feels pointless.** → "Run 1 is the floor. You can't see the jump
  without it."

### Debrief questions with model answers

- **Q: Which knob moved the output most, and why?**
  A: For this task, **context** (attaching the report) — it's the difference between a generic
  guess and a grounded, board-ready summary. Phrasing is second; model choice is a distant
  third for a short summary.

- **Q: Why did the vague Run 1 sometimes invent a summary?**
  A: The model completes plausible text. With no source, "a plausible operations summary" is
  the most likely continuation — so it writes one, numbers and all. That's hallucination, and
  it's why grounding matters.

- **Q: When WOULD the reasoning model clearly win?**
  A: On multi-step work — ranking the open decisions, comparing contracts, analyzing a
  dataset — where a wrong intermediate step ruins the answer. Not on a one-shot summary.

- **Q: You ran the same prompt twice and got two answers. Is the tool broken?**
  A: No — temperature adds some randomness, and memory/custom instructions change output.
  Control those (temporary chat) and the answers converge.

### What good looks like

A strong deliverable:

- Has **three recorded runs** of the *same* request, with one knob changed at a time.
- Names **which single change moved the output most**, with a specific reason tied to the
  outputs (not "the second one was nicer").
- Notes at least one concrete behavior: an invented figure in Run 1, a format hit in Run 2,
  or a "barely different" reasoning run in Run 3.
- Ends with a **saved best version** of the request, ready to be upgraded with the full
  anatomy in Lab 02.

A weak deliverable says "the longer one was better" with no attribution and no evidence.
Redirect: "Which *clause* made it better? That clause is what Module 2 teaches you to add on
purpose."
