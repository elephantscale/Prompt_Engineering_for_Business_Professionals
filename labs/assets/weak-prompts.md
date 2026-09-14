# Weak Prompts to Rewrite (Lab 02)

These are real-world "type a question, take the first answer" prompts. Each one is weak in
a specific way. In Lab 02 you will rewrite each into a strong prompt using the anatomy —
**Role, Task, Context, Constraints, Format, Examples** — and measure the improvement.

The point is not to make them longer for its own sake. Each added clause should remove a
way the answer can come back wrong.

---

1. `Write a marketing email.`
   *(No product, no audience, no offer, no length, no tone.)*

2. `Summarize this.`
   *(Summarize for whom? How long? What should the reader do with it?)*

3. `Make this sound more professional.`
   *("Professional" to a lawyer, a nurse, and a startup founder are three different things.)*

4. `Give me some ideas for our product launch.`
   *(What product? Which channel? What's the goal — signups, press, revenue?)*

5. `Reply to this angry customer.`
   *(What's our policy? What can we actually offer? What tone — apologetic, firm, warm?)*

6. `Analyze our sales data.`
   *(Analyze for what decision? Which metric matters? What does "analyze" mean here?)*

7. `Write a job description for a project manager.`
   *(Which team, which seniority, which must-have skills, which company voice?)*

8. `Explain our return policy to a customer.`
   *(Where is the actual policy? Without it the model will invent one — the dangerous case.)*

---

## Companion source files

Some rewrites are stronger when you attach real material instead of describing it:

- For #2 and #6, attach [`sample-quarterly-report.md`](sample-quarterly-report.md).
- For #5, use a message from [`sample-support-emails.csv`](sample-support-emails.csv) and
  ground the reply in [`sample-return-policy.md`](sample-return-policy.md).
- For #8, ground the answer in [`sample-return-policy.md`](sample-return-policy.md) so the
  model quotes the real policy instead of hallucinating one.
