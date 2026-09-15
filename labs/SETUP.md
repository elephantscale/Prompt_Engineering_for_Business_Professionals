# Lab Setup — Prompt Engineering for Business Professionals

The labs are browser-based. Participants do not need Python, Docker, a code editor, or any
local development tools.

## Required

- Modern browser: Chrome, Edge, Firefox, or Safari
- Internet access
- **A hands-on account for one current AI assistant** — **ChatGPT Enterprise (Business)** is
  the primary tool for this cohort; Claude and Gemini are also supported — one per student
  (see "Delivery model" below)
- The sample files in `labs/assets/` and the templates in `course-materials/`

## Delivery model — every student has an account

Each student has their own account to a frontier assistant, so **all lab work is
hands-on**. This cohort's primary tool is **ChatGPT Enterprise (Business)** — lead there for
every lab. The labs are also written **assistant-agnostic**: examples work in **Claude** and
**Gemini** too, which are supported as secondary alternatives the instructor may demo.

- **Primary assistant (hands-on, every student):** **ChatGPT Enterprise (Business)** on the
  "Elephant Scale — Business" workspace. Every lab's core steps are completed here.
- **Also supported (secondary / instructor may demo):** **Claude** and **Gemini**. The labs
  give the equivalent steps for these where they differ.
- **A second assistant (for the comparison labs):** Lab 01 and the Module 5 evaluation work
  best when students can compare two. If students only have ChatGPT, the labs give a
  fully supported single-assistant path: compare **two configurations of the same
  assistant** — the fast/instant model vs. the **Thinking** (reasoning) model, or a weak
  prompt vs. a framed prompt. The instructor also demos a second vendor (Claude or Gemini)
  side-by-side on the projector.

| Role | Who needs it | Tool |
|------|--------------|------|
| Student hands-on | every student | **ChatGPT Enterprise (Business)**, with file upload enabled (Claude or Gemini also supported) |
| Comparison (optional) | instructor, or students who have it | A second assistant (Claude/Gemini), OR a second config of ChatGPT |

### Account setup — ChatGPT Enterprise (Business), primary

Every student signs in to the org workspace before class:

1. Go to chatgpt.com and sign in with your Elephant Scale account. Confirm the
   account/workspace switcher reads **"Elephant Scale — Business"** (top of the sidebar or
   account menu) — not a personal account.
2. Get familiar with the left **sidebar**: **New chat**, **Projects**, **GPTs**, **Library**,
   **Plugins**, **Agents**. Lab 06 saves reusable context under **Projects** and **GPTs**.
3. Note the **Chat / Work** mode toggle — stay in the mode your instructor specifies for a lab.
4. **Connectors** (if enabled by the workspace admin): Gmail, Slack, and Google Drive can be
   attached so ChatGPT can reference that content. Confirm which, if any, are turned on for
   your seat.
5. Note the **model picker** at the top of a chat: it shows the current GPT-5.x models with a
   fast default (**instant**) and a separate **Thinking** (reasoning) option — see the model
   note below.

**Also supported (secondary):** Claude (claude.ai) and Gemini (gemini.google.com). Sign in
to those only if the instructor is demoing them or a student's seat is provisioned there.

### Confirm before class

Features differ by **plan**, **workspace/admin settings**, and **region**. Before teaching,
confirm on the *actual* student accounts that these work:

- Starting a new/**Temporary Chat** (to control for memory and custom instructions)
- **File upload** (PDF / CSV / image) — several labs depend on it
- Switching between the **fast/instant** model and the **Thinking** (reasoning) model
- Saving reusable context — a **Project** or **Custom GPT** (ChatGPT), a **Project** (Claude),
  or a **Gem** (Gemini) — used in Lab 06

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

## Clean-slate / fair-test — turn off memory and custom instructions

When comparing prompts or models, memory and custom instructions silently change the output
— you'd be testing your saved settings, not the prompt. Start from a clean slate before any
comparison lab. This is the single most common cause of "we ran the same prompt and got
different answers."

- **ChatGPT (primary):** open a **Temporary Chat** (top of the chat window), and turn off
  **memory & custom instructions** under **Settings → Personalization** (disable "reference
  saved memories" and clear custom instructions).
- **Claude:** start a **new chat**, and clear/disable saved context under **Settings → Profile**.
- **Gemini:** start a new chat and turn off **saved info** (Gemini's saved-info/personalization
  settings).

### Model picker note

In ChatGPT, use the **GPT-5.x default (instant)** model for everyday drafting, and switch to
**Thinking** (reasoning) for multi-step tasks — grounding checks, evaluation, and anything
that needs careful reasoning. Several labs contrast the two, so know where the toggle is.

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
