# Advanced Prompt Engineering Techniques

Elephant Scale

---

## Why This Module

* You can now write a strong single prompt. Some work is too big for one prompt.
* This module adds four power tools — used **only where they earn their keep**:
  - **Reasoning models** for multi-step thinking.
  - **Prompt chaining** to break a big task into reliable steps.
  - **Grounding** to anchor answers in your documents (the idea behind RAG — no code).
  - **System prompts / saved context** for consistent behavior.
* Plus two habits of power users: **self-review** and knowing what **tool-connected**
  assistants can and can't do.

> Advanced ≠ complicated. It's knowing which extra step removes a real failure — and
> skipping it when a single prompt already works.

---

## Reasoning Models: Let It Think

* A reasoning ("thinking") model works through intermediate steps before answering.
* Reach for it when a **wrong middle step ruins the result**:
  - comparing options against several criteria, multi-document analysis, planning, anything
    with math or dependencies.
* You usually don't need "think step by step" tricks anymore — modern reasoning models do it
  internally. Just pick the reasoning model and state the goal clearly.

```text
Compare these two vendor proposals against price, SSO support, and support SLA.
Reason it through, then give a recommendation table and a one-line justification.
```

> Fast model for drafting; reasoning model for deciding. Matching the model to the job is
> the whole skill.

---

## Prompt Chaining: One Big Task → Reliable Steps

* A single mega-prompt that does everything tends to do each part poorly.
* **Chain** instead — each step has one job, and its output feeds the next:
  1. **Extract** the facts from the raw input.
  2. **Draft** the deliverable from those facts.
  3. **Review** the draft against the requirements.
  4. **Revise** using the review.
* Each step is easy to check, so errors don't compound silently.

> The output of step N is the input to step N+1. If a step is unreliable, you've isolated
> exactly where to fix it.

---

## Worked Chain: Raw Input → Finished Deliverable

```text
Step 1 (extract): From the attached meeting notes, list every decision and every action
item with its owner. Mark anything unclear. Use only the notes.

Step 2 (draft): Using that list, write a stakeholder update email — decisions, then next
steps with owners and dates. Under 200 words, plain and direct.

Step 3 (review): Critique the draft against: did it invent anything? Is every owner from
the notes? Is the tone on brand? List specific fixes.

Step 4 (revise): Apply the fixes. Return the final email only.
```

* Same conversation, four turns. You inspect each handoff.

> This is Lab 04: you'll build this exact chain end to end.

---

## Grounding: Anchor Answers in Your Documents

* The single biggest defense against hallucination: **make the model answer from material
  you give it**, not from memory.
* The pattern (this is the idea behind "RAG," no code required):
  - Attach or paste the source.
  - Instruct: *"answer using only this; quote the relevant line; if it's not here, say
    'not in the document'."*
* Scales from one pasted doc to a saved knowledge base in a Project / Custom GPT / Gem.

```text
Using only the attached return policy, answer the customer's question. Quote the exact
clause you relied on. If the policy doesn't address it, say "not covered in this policy".
```

> If you remember one technique from two days, remember this one.

---

## System Prompts & Saved Context

* A **system prompt** (or saved instructions, or a Project/Custom GPT/Gem) sets persistent
  behavior so you don't re-explain yourself every chat.
* Good things to bake in:
  - role and audience, brand voice, the source boundary rule, the output format you always
    want, and "flag uncertainty."
* Turns a one-off clever prompt into a **reusable, consistent tool** your team can share —
  which is exactly Module 6.

> Write the instruction once, benefit every run. Just remember saved context is ON — turn
> it off when you're comparing fairly.

---

## Self-Review & Refinement

* The model is a surprisingly good critic of its own work — if you ask in a separate step.
  - *"List three ways this draft could be wrong or off-brand, then fix them."*
  - *"What did you assume that I didn't tell you? What's missing?"*
* Works because reviewing is a different task from drafting; separating them catches things
  a single pass misses.

> Never ship the first draft. The cheapest quality gain is one "now critique and improve
> that" turn.

---

## Tool-Connected Assistants

* Modern assistants can **search the web, browse, run data analysis, use files/connectors**.
* What that changes:
  - **Search/browse** pulls in current info — but you must **verify the citations**; they
    can be wrong or misread.
  - **Data analysis** runs real calculations on an uploaded file (no formulas from you).
  - **Connectors** reach into Drive, email, etc. — powerful, and a **privacy decision**.
* Rule of thumb: a tool-connected answer is a *lead*, not a *verdict*, until you check it.

---

## When NOT to Use the Advanced Stuff

* A chain for a task one good prompt handles = wasted effort and more places to break.
* A reasoning model for "reword this" = slow for no gain.
* Grounding is the exception — **almost always worth it** when facts matter.
* Ask: *does this extra step remove a failure I actually see?* If not, skip it.

> The senior move is often **removing** a step, not adding one.

---

## The Lab: Build a Multi-Step Chain

* You'll take raw input (messy notes or a support thread) through a four-step chain —
  extract → draft → review → revise — to a finished, self-reviewed deliverable.
* You'll ground it in a source and inspect every handoff.

> You leave with a chain you can paste and reuse for your own recurring deliverable.
