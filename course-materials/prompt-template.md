# The Prompt Template

Copy this block into your assistant and fill it in. You will not need every field every
time — but naming the fields keeps you from skipping the one that would have saved the
answer. This is the reusable shape taught in Module 2 and used in every lab afterward.

```text
# ROLE
Act as a [role/expertise] writing for [audience].

# TASK
[One clear instruction: draft / summarize / extract / classify / compare / rewrite …]
The goal is to [business outcome].

# CONTEXT
[Background the model needs: the situation, the reader, what's already been tried,
what matters. Attach or paste source material rather than relying on the model's memory.]

# CONSTRAINTS
- Length: [word/line budget]
- Tone: [e.g. warm, direct, formal — or "match the attached brand voice"]
- Must include: [required points/terms]
- Must avoid: [forbidden claims/terms]
- Source rule: use ONLY the attached material; if it isn't there, say "not in the source".

# FORMAT
[Exact output shape: table with columns X/Y/Z, five bullets, an email, a checklist,
a slide outline. Give a skeleton if the shape matters.]

# EXAMPLES  (optional but powerful)
[One or two short examples of a good answer — "here's the style/format I mean".]

# REVIEW
Before finishing: state your assumptions, mark anything uncertain as "needs review",
and list what information was missing.
```

## The one-line version

For quick tasks, you rarely need the whole block. Even a single sentence is stronger when it
carries the four highest-value fields:

> **[Role]**, **[task]** for **[audience]**, as **[format]**, using only **[source]**.

Example:
> *As a support lead, draft a refund reply for an upset enterprise customer, as a short
> email, using only the attached return policy and brand-voice guide.*

## Why each field earns its place

| Field | The failure it prevents |
|-------|-------------------------|
| Role | Generic, unfocused voice |
| Task | The model optimizes the wrong thing |
| Context | Plausible but wrong assumptions |
| Constraints | Right content, unusable length/tone |
| Format | Correct answer you still have to reformat by hand |
| Examples | "Professional" means the wrong thing to the model |
| Review | Confident hallucinations shipped as fact |
