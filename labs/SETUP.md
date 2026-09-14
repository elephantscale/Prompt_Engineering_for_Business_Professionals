# Lab Setup — Prompt Engineering for Business Professionals

The labs are browser-based. Participants do not need Python, Docker, a code editor, or any
local development tools.

## Required

- Modern browser: Chrome, Edge, Firefox, or Safari
- Internet access
- **A hands-on account for one current AI assistant** — Claude, ChatGPT, or Gemini — one
  per student (see "Delivery model" below)
- The sample files in `labs/assets/` and the templates in `course-materials/`

## Delivery model — every student has an account

Each student has their own account to a frontier assistant, so **all lab work is
hands-on**. The labs are written **assistant-agnostic**: examples lead with **Claude** and
note the **ChatGPT** and **Gemini** equivalents, so they work whichever assistant your
cohort is provisioned on.

- **Primary assistant (hands-on, every student):** the one your organization provisioned —
  Claude, ChatGPT, or Gemini. Every lab's core steps are completed here.
- **A second assistant (for the comparison labs):** Lab 01 and the Module 5 evaluation work
  best when students can compare two. If students only have one assistant, the labs give a
  fully supported single-assistant path: compare **two configurations of the same
  assistant** — the standard model vs. the reasoning/"thinking" model, or a weak prompt vs.
  a framed prompt. The instructor also demos a second vendor side-by-side on the projector.

| Role | Who needs it | Tool |
|------|--------------|------|
| Student hands-on | every student | One of Claude, ChatGPT, or Gemini, with file upload enabled |
| Comparison (optional) | instructor, or students who have it | A second assistant, OR a second config of the same one |

### Confirm before class

Features differ by **plan**, **workspace/admin settings**, and **region**. Before teaching,
confirm on the *actual* student accounts that these work:

- Starting a new/temporary chat (to control for memory and custom instructions)
- **File upload** (PDF / CSV / image) — several labs depend on it
- Switching between a **fast** model and a **reasoning/"thinking"** model
- Saving reusable context — a **Project** (Claude), **Custom GPT** (ChatGPT), or **Gem**
  (Gemini) — used in Lab 06

> "It worked in the demo video" is not a plan. Check it on a student seat, on today's plan,
> from the classroom network.

## Getting a sample file into the assistant

Sample files live in `labs/assets/`:

- `weak-prompts.md` — eight weak prompts to rewrite (Lab 02)
- `sample-support-emails.csv` — customer emails to triage and respond to (Lab 03, Lab 05)
- `sample-quarterly-report.md` — an operations report to summarize (Labs 02, 04)
- `sample-meeting-notes.md` — messy meeting notes to summarize/extract (Labs 03, 04)
- `sample-brand-voice.md` — a brand-voice guide to match (Lab 03)
- `sample-return-policy.md` — the "ground truth" policy for grounding exercises (Labs 02, 04, 05)
- `prompt-eval-pairs.md` — two competing prompts and a broken prompt (Lab 05)

To use one: open the file in the course repo (or the GitHub Pages site), then either
**download** it and upload it into the assistant, or **copy its text** and paste it into the
chat. Everything a lab needs is in the repo.

## Turn off memory and custom instructions for comparisons

When comparing prompts or models, memory and custom instructions silently change the output
— you'd be testing your saved settings, not the prompt. Use a **temporary/new chat**, or
turn off "reference saved memories" and clear custom instructions, before any comparison
lab. This is the single most common cause of "we ran the same prompt and got different
answers."

## Data rules

- Use only approved classroom/sample data unless the instructor confirms otherwise.
- Do not upload confidential, regulated, or client-private data to public tools. (The
  `sample-support-emails.csv` file includes a HIPAA-style row precisely to practice
  catching this.)
- Keep generated artifacts in the class workspace or an approved location.
- Verify important facts before using AI output in a real decision.

## Verify your machine

From the repo root:

```sh
./labs/verify-setup.sh
```

The script checks basic browser availability, network reachability, and course file
structure. It does not sign in to AI tools or validate paid-account access.
