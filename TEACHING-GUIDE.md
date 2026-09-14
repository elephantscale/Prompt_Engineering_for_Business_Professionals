# Teaching Guide — Prompt Engineering for Business Professionals

*The instructor run-of-show for the two days. This ties the modules together; the deep,
click-by-click facilitation for each lab lives in that lab's **Teacher's Playbook** section
(bottom of each `labs/NN-*/README.md`). Read this the night before; keep each lab's Playbook
open while that lab runs.*

---

## The night before — 20-minute pre-flight

Do this on the **actual account and machine you'll teach from**, on today's plan, from the
room's network. "It worked in the demo video" is not a plan.

- [ ] Sign in to your assistant (Claude lead; ChatGPT / Gemini equivalents noted in labs).
- [ ] Start a **temporary / new chat** and confirm you can toggle memory & custom instructions off.
- [ ] Confirm **file upload** works — upload `labs/assets/sample-quarterly-report.md` and ask for
      a one-line summary. Several labs depend on upload.
- [ ] Switch between a **fast** model and a **reasoning / "thinking"** model — know where that
      control is on your platform (you demo it in Modules 1 and 4).
- [ ] Create one **Project / Custom GPT / Gem** so you can demo saving reusable context (Module 6).
- [ ] Open the **course landing page** (`index.html` or the GitHub Pages link) and click through
      to the cohort-intro form — you'll send students there in the first 10 minutes.
- [ ] Have the sample files reachable: open `labs/assets/` in the repo view on the projector.
- [ ] Skim the **five model answers** you'll show live (Modules 1, 2, 5 strong-vs-weak pairs) so
      the outputs don't surprise you if the live model phrases things differently.
- [ ] Run `./scripts/validate-course.sh` and `./labs/verify-setup.sh` once — both should pass.

> If students have their own accounts: send them the SETUP.md checklist the day before so
> account/upload problems surface before 9:00, not during Module 1.

---

## Materials map — what to have open

| Always open | For specific modules |
|-------------|----------------------|
| The slide deck (`slides/release/*.pptx`) | `course-materials/prompt-template.md` (M2 on) |
| The repo `labs/assets/` view | `course-materials/evaluation-rubric.md` (M5, M7) |
| Your assistant, in a temporary chat | `course-materials/brand-voice-worksheet.md` (M3) |
| This guide + the running lab's Playbook | `course-materials/prompt-library-template.md` (M6) |
| | `course-materials/capstone-rubric.md` (M7) |

---

## Two-day shape at a glance

**Day 1 — foundations to applied.** They leave able to build a strong prompt and apply it to
their own work.

| Clock | Block | Min |
|-------|-------|-----|
| 9:00 | Welcome, setup check, cohort intros | 30 |
| 9:30 | **Module 1** — How AI actually works (lecture + Lab 01) | 105 |
| 11:15 | Break | 15 |
| 11:30 | **Module 2** — Anatomy of a prompt (lecture + Lab 02) begins | 90 |
| 13:00 | Lunch | 60 |
| 14:00 | **Module 2** — finish lab + debrief | 60 |
| 15:00 | **Module 3** — Business scenarios (lecture + Lab 03) begins | 60 |
| 16:00 | Break | 15 |
| 16:15 | **Module 3** — finish lab + debrief | 120→ |
| ~17:00 | Day 1 wrap: one thing you'll reuse tomorrow | — |

**Day 2 — advanced to shipping.** They leave with a reusable, governed prompt and a plan.

| Clock | Block | Min |
|-------|-------|-----|
| 9:00 | Recap Day 1, answer overnight questions | 15 |
| 9:15 | **Module 4** — Advanced techniques (lecture + Lab 04) | 165 |
| 12:00 | Lunch | 60 |
| 13:00 | **Module 5** — Testing & evaluating (lecture + Lab 05) | 120 |
| 15:00 | Break | 15 |
| 15:15 | **Module 6** — Prompt systems & governance (lecture + Lab 06) | 90 |
| 16:45 | **Module 7** — Capstone kickoff + build/present | 90→ |
| ~17:00 | Close: 30-day plans shared | — |

> Times are a target, not a contract. Modules 2 and 4 are the ones that run long — protect
> them. The "If you're behind" notes below tell you exactly what to cut.

---

## Facilitation principles (the whole course in six lines)

1. **Show, don't assert.** Every big claim has a live demo. Run the prompt; let them watch the
   output change. The strong-vs-weak pairs are the heart of the course.
2. **The first answer is a draft, not a verdict.** Model the follow-up every time — the room
   copies what you do, not what you say.
3. **Front-load "memory off."** The #1 cause of "we ran the same prompt and got different
   answers" is memory/custom instructions. Have everyone use a temporary chat before any
   comparison.
4. **Fluent ≠ correct.** Keep pointing at the source. Score accuracy against the file, not
   against how confident the writing sounds.
5. **Teach the catch, not just the trick.** Half of this course is spotting hallucination,
   over-promising, and injection. Celebrate the student who catches the model being wrong.
6. **Everything ties to their work.** When energy dips, pull an example from someone's actual
   job. The capstone is already theirs — foreshadow it from Module 1.

---

## Module-by-module teaching flow

Each module: the objective, the points to land, the **one live demo** that carries it, the lab
handoff, and what to cut if you're behind. Deep facilitation is in each lab's Teacher's Playbook.

### Module 1 — How Modern AI Assistants Actually Work (2h)

- **Objective:** they understand the model as a fast, capable, *overconfident junior colleague*,
  and that the prompt is the steering wheel.
- **Land these:** tokens/context/temperature/hallucination in plain language; same question →
  different answers; reasoning vs. fast models; no assistant is "the smartest," choose by fit.
- **Live demo:** open the sample quarterly report, ask "summarize this for a VP" three ways —
  thin vs. framed wording, then fast vs. reasoning model. Let them see wording move the output
  more than model choice does.
- **Lab 01 handoff:** the "one idea, three knobs" exercise — run the same request three ways and
  name which single change moved the answer most. ~45 min hands-on.
- **If you're behind:** cut the "Common Myths" slide; keep the three-knobs demo.

### Module 2 — The Anatomy of a Strong Prompt (3h) — *the core skill; protect it*

- **Objective:** they can build a prompt from six named blocks (R-T-C-C-F-E) instead of a blank box.
- **Land these:** task is always a verb; be specific (audience/job/done); **give it the source +
  a source boundary**; zero- vs few-shot; format makes it paste-ready.
- **Live demo:** the Lab 02 worked task — weak prompt #8 ("explain our return policy") with no
  file invents a policy; attach `sample-return-policy.md` + a source rule and it quotes the real
  one. This is the single most important demo of Day 1.
- **Lab 02 handoff:** rewrite three weak prompts from `weak-prompts.md`, run baseline vs. strong,
  name the winning block; then build a personal template. ~40 min hands-on.
- **If you're behind:** have them rewrite two prompts, not three — but everyone does the
  source-grounded one (#5 or #8).

### Module 3 — Prompting for Real Business Scenarios (3h)

- **Objective:** apply the anatomy to real marketing/sales/support/ops work, on-brand.
- **Land these:** the universal pattern (frame → source → format → review → follow-up); encoding
  brand voice with a worksheet + one real example sentence; personalization; the compliance reflex.
- **Live demo:** draft a refund reply to a `sample-support-emails.csv` row, grounded in the policy
  and matched to `sample-brand-voice.md`. Then show the **Northstar/HIPAA row** — the model should
  flag it and route to a human, not propose "secure upload."
- **Lab 03 handoff:** produce a three-piece on-brand content set + a personalization variation. ~45 min.
- **If you're behind:** two artifacts instead of three; keep the brand-voice + compliance beats.

### Module 4 — Advanced Prompt Engineering Techniques (3h) — *runs long; watch the clock*

- **Objective:** use reasoning, chaining, and grounding *where they earn it* — not everywhere.
- **Land these:** reasoning models for multi-step problems; a chain = big task → reliable steps;
  grounding/RAG idea with no code; system prompts / saved context; self-review; when NOT to.
- **Live demo:** the four-step chain — extract from `sample-meeting-notes.md` → draft a Q4 memo
  grounded in the quarterly report → have the assistant self-critique → finalize.
- **Lab 04 handoff:** each student builds and documents their own chain. ~60 min — the biggest lab.
- **If you're behind:** demo the full chain, but have students build only steps 1–3 (extract →
  draft → self-review); finalize is homework.

### Module 5 — Refining, Testing & Evaluating Prompts (2h)

- **Objective:** "good" becomes a number they can defend, and they can diagnose a bad prompt.
- **Land these:** the refinement loop; define success first; the rubric; side-by-side; trust-but-
  verify; the three failure modes — hallucination, ambiguity, **prompt injection** (data ≠ instructions).
- **Live demo:** score thin prompt A1 vs. framed A2 on the support CSV with `evaluation-rubric.md`;
  then diagnose and repair the deliberately broken refund prompt; then the injection demo.
- **Lab 05 handoff:** score the A1/A2 pair, fix the broken prompt, see the injection defense. ~45 min.
- **If you're behind:** do the scored comparison + the broken-prompt fix live together; injection
  becomes a 5-minute demo, not a hands-on.

### Module 6 — Building & Governing Prompt Systems (1.5h)

- **Objective:** turn a lucky prompt into a versioned, shareable, responsibly-used asset.
- **Land these:** what goes in a library entry; versioning + changelog; saving a Project/Custom
  GPT/Gem; sharing/SOPs; responsible use built in; **when NOT to use AI**.
- **Live demo:** take a strong prompt from Lab 03/04, write it up with `prompt-library-template.md`,
  then save it as a Project/Custom GPT/Gem so the role is baked in.
- **Lab 06 handoff:** each student packages one prompt as a library entry + a saved assistant. ~35 min.
- **If you're behind:** the library entry is the must-do; saving the reusable assistant can be shown
  live and finished later.

### Module 7 — Capstone (1.5h)

- **Objective:** synthesize everything into one real, governed solution from their own work.
- **Land these:** it pulls together M2 anatomy, M3 voice, M4 chaining/grounding, M5 scoring, M6
  packaging; guardrails are graded; end with a 30-day plan.
- **Facilitation:** 10 min pick + scope, ~50 min build/test/refine, ~30 min lightning demos.
  Score against `capstone-rubric.md`; give each presenter one strength + one next step.
- **If you're behind:** shrink to a "design + one working prompt + 30-day plan" and demo 4–5
  volunteers rather than the whole room.

---

## Contingencies

- **Accounts don't work / no upload on a plan:** paste sample files as text instead of uploading;
  pair a student without access with one who has it. The labs all have a paste fallback.
- **Only one assistant available (no second vendor):** every comparison works as *two configs of
  the same assistant* — standard vs. reasoning model, or weak vs. framed prompt. Say
  "Option A / Option B" instead of vendor names.
- **Room is quiet / no volunteered examples:** use the worked task in each lab's Playbook — they
  all run on the provided sample data and are fully scripted.
- **Running far ahead:** deepen Module 4 (add alternate grounding sources) or let Module 7 demos
  run longer — the capstone is where retention happens.
- **A model gives a different answer than the Playbook shows:** that's fine and teachable — the
  Playbook notes outputs vary by version/date. Score what you actually got against the rubric.

---

## The one-line close

> You didn't learn tricks that expire with the next model. You learned an anatomy, an evaluation
> habit, and a way to package what works — skills that outlast any release. Go use the 30-day plan.
