# Prompt Engineering for Business Professionals

*Write prompts that consistently produce accurate, on-brand, useful results — and build a
reusable prompt system your whole team can rely on.*

© Elephant Scale

## Course Description

A two-day, hands-on course that teaches business professionals to get reliably better
results from modern AI assistants. It is current to the 2026 model landscape — reasoning
models, tool-connected assistants, and structured output — not the early-ChatGPT era.
Students work entirely in the browser; no coding is required.

The course is organized around practical work products: compared model runs, strong
prompts built from a repeatable anatomy, on-brand business content, multi-step prompt
chains, scored prompt evaluations, a reusable prompt library, and a final capstone in which
each participant designs an AI solution for a real challenge from their own work.

## Audience

Business professionals, product managers, marketing and sales specialists, customer-service
and support staff, analysts, and operations and HR professionals. No programming,
data-science, or prior prompt-engineering experience required.

## Skill Level

Introductory to intermediate. No coding required.

## Duration

2 Days / 16 hours

## Repo Structure

| Path | Purpose |
|------|---------|
| `outline.md` | Full course description and module outline |
| `slides/` | Markdown slide decks, one per module |
| `labs/` | Browser-based lab guides, setup docs, and sample data |
| `course-materials/` | Reusable templates, rubrics, and the cohort-intro form |
| `scripts/` | Course validation helpers |
| `docs/` | Supporting source documents |

## Course Flow

| Module | Topic | Lab Folder |
|--------|-------|------------|
| 1 | How Modern AI Assistants Actually Work | `labs/01-How-AI-Works` |
| 2 | The Anatomy of a Strong Prompt | `labs/02-Anatomy-of-a-Prompt` |
| 3 | Prompting for Real Business Scenarios | `labs/03-Business-Scenarios` |
| 4 | Advanced Prompt Engineering Techniques | `labs/04-Advanced-Techniques` |
| 5 | Refining, Testing & Evaluating Prompts | `labs/05-Testing-Evaluating` |
| 6 | Building & Governing Prompt Systems | `labs/06-Prompt-Systems-Governance` |
| 7 | Capstone Project | `labs/07-Capstone` |

## Lab Environment

- A modern browser and internet access.
- **A hands-on account for a current AI assistant (Claude, ChatGPT, or Gemini)** — one per
  student. The labs are assistant-agnostic; examples lead with Claude and note the ChatGPT
  and Gemini equivalents. See `labs/SETUP.md`.
- Sample business files are provided in `labs/assets/`; reusable templates in
  `course-materials/`.

No local software installation is required for participants.

## Validate the Repo

From the repo root:

```sh
./scripts/validate-course.sh
./labs/verify-setup.sh
```

`validate-course.sh` checks the course repository structure. `verify-setup.sh` checks
whether a participant machine has the browser and network basics expected for the labs.
