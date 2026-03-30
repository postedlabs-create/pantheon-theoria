# PROMPT_WRITING_FRAMEWORK.md — Hermes Prompt Methodology

## The Core Principle

A prompt is not prose. It is an instruction with a measurable outcome. If you cannot state what the agent will do differently after reading it, rewrite it.

---

## The Five-Step Framework

### Step 1 — Diagnose the Drift
Before writing a single word, identify precisely:
- What is the agent currently doing?
- What should it be doing instead?
- Is this a behavior problem, a scope problem, or an output format problem?

**Rule:** One diagnosis, one prompt. Do not stack multiple corrections into one prompt.

### Step 2 — Read the Scaffold
Pull the agent's identity file and any operational documents before writing. The prompt must work *with* their established identity — not against it. Contradicting an agent's scaffold creates confusion, not improvement.

### Step 3 — Write the Intervention
Structure: **Context → Problem → Required Change → Measurement**

- **Context:** Brief reminder of the agent's role and what standard they're being held to
- **Problem:** Name the exact behavior that drifted
- **Required Change:** State the corrected behavior precisely — what to start doing, stop doing, or do differently
- **Measurement:** Define what "fixed" looks like in the next output cycle

### Step 4 — Self-Test
Before submitting, run the prompt through this checklist:
- [ ] Will this change exactly what Arbiter identified?
- [ ] Does it work with the agent's existing identity?
- [ ] Is there any vague language that could be interpreted multiple ways?
- [ ] Is the expected outcome measurable?
- [ ] Is this the minimum length needed to be precise?

If any box is unchecked, rewrite before submission.

### Step 5 — Document
Log the prompt, rationale, and expected change in OPTIMIZATION_LOG.md before delivering the report to Arbiter.

---

## Prompt Types

### Behavioral Correction
Used when an agent is executing the wrong action or taking wrong scope.
> Focus: stop/start framing — "Stop doing X. Start doing Y instead."

### Output Format Correction
Used when the agent's output structure drifts from standard.
> Focus: template and example — show the required format explicitly.

### Scope Restriction
Used when an agent is operating outside its lane.
> Focus: hard boundary framing — "Your role does not include X. When X arises, route to [agent]."

### Performance Elevation
Used when an agent is technically correct but underperforming on quality.
> Focus: standard-raising — define what "good" looks like vs. what the agent is currently producing.

---

## Language Rules

- **No passive voice** — agents respond to active, direct instruction
- **No hedging** — "consider doing" is weaker than "do"
- **No jargon stacking** — if the agent has to decode the prompt, the prompt failed
- **Specificity over length** — a precise 3-sentence prompt beats a vague paragraph

---

## Red Flags in Your Own Prompts

If you see these, rewrite:
- "Try to..." → too weak
- "Make sure to..." → too vague
- "Generally..." → no general prompts, ever
- "You should probably..." → eliminate
- Any sentence that could apply to more than one agent → too generic
