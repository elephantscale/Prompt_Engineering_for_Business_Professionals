# Prompt Library — Entry Template

A prompt is only reusable if someone *else* can pick it up and get the same result. This is
the entry format taught in Module 6 and produced in Lab 06. Keep one file per prompt, or one
row per prompt in a shared doc/sheet — the fields are what matter.

---

```markdown
# <Prompt name — verb + object, e.g. "Triage support queue">

**ID / version:** PL-014 · v1.2
**Owner:** <name / team>
**Last updated:** YYYY-MM-DD
**Status:** draft | reviewed | approved
**Category:** marketing | sales | support | ops | HR | analysis

## What it's for
One or two sentences: the job this prompt does and when to reach for it.

## Inputs required
- What the user must supply (a file? a customer message? a date range?)
- Any variables to fill in, written as [SQUARE_BRACKETS].

## The prompt
```text
<the full, tested prompt, with [VARIABLES] marked>
```

## Example input → output
- Input: <short example>
- Output: <what a good result looks like>

## Model / settings
- Works well on: <fast model | reasoning model>; notes on temperature/settings if relevant.

## Known limits & review step
- Where it goes wrong, and the one check to run before using the output.

## Changelog
- v1.2 — added source-boundary clause (fewer invented facts)
- v1.1 — tightened output format to a table
- v1.0 — initial version
```

---

## Library-level conventions (agree these as a team)

- **Naming:** verb + object ("Draft renewal email", "Summarize incident").
- **Versioning:** bump the version when the prompt text changes; keep the changelog.
- **Review before "approved":** at least one other person runs it and scores the output with
  `evaluation-rubric.md`.
- **Re-test when the model changes:** a model upgrade can change behavior; re-run approved
  prompts and note the date.
- **Where it lives:** a shared repo, doc, or sheet everyone can reach — plus, for heavily used
  prompts, saved as a Project / Custom GPT / Gem so the role is baked in.
