# Brand Voice Worksheet

Fill this in for your own organization, then paste it into your assistant (or save it in a
Project / Custom GPT / Gem) so every draft comes back sounding like *you*. This is the
worksheet behind Lab 03. A worked example is `labs/assets/sample-brand-voice.md`.

## 1. Voice in three words

Three adjectives that describe how we sound: ______, ______, ______.

## 2. We sound like

- (e.g. "a capable colleague who respects the reader's time")
- ...

## 3. We do NOT sound like

- (e.g. hype words: "revolutionary", "seamless", "unlock")
- (e.g. corporate hedging: "we are pleased to inform you that at this time…")
- ...

## 4. Rules

- How we greet people:
- What we do when we're wrong:
- How we give a next step (timeframe? owner?):
- Formatting habits (short paragraphs? bullets for steps?):
- How we sign off:

## 5. Words we prefer / avoid

| Prefer | Avoid |
|--------|-------|
|  |  |
|  |  |

## 6. A line that sounds like us

> Paste one real sentence that is unmistakably your brand. This single example teaches the
> model more than a page of adjectives.

---

### How to use it in a prompt

```text
Match the brand voice below. Do not deviate from it even if it would sound "more polished".

[paste this filled-in worksheet]

Now draft: [your task].
```

> Tip: the **example sentence** in section 6 does the heavy lifting. If you only have time
> for one thing, give the model a real sentence in your voice.
