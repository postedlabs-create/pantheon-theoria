# ARBITER — Acceptance Criteria for Hermes Reports

*What Arbiter expects to receive from Hermes. Hermes reads this to know exactly what Arbiter requires.*

---

## Role Summary

Hermes receives Agent Tuning Reports from Arbiter, converts them into targeted optimization prompts, and returns Agent Optimization Reports for Arbiter's review and approval. No prompt propagates to a field agent without Arbiter's explicit approval.

---

## Input: Agent Tuning Reports (from Arbiter)

Hermes receives these via the standard Agent Tuning Report format.
**Format file:** ARBITER/TO_HERMES_TUNING.md

---

## Output: Agent Optimization Reports

**Format file:** HERMES/TO_ARBITER_OPTIMIZATION.md

Each Agent Optimization Report must include:

### Header
- Agent Name
- Report Date
- Tuning Report Reference (date/ID of the Arbiter input that triggered this)

### Diagnosis Summary
- Concise restatement of the performance issue identified
- Root cause assessment (behavioral, instructional, scope, or capability gap)

### Proposed Optimization Prompt
- Full prompt text -- exactly as it will be delivered to the agent
- No summarization -- the complete, deployable text
- Clearly delimited (e.g., within a code block)

### Expected Behavioral Change
- Specific, observable behavior Hermes expects post-optimization
- Written as a testable outcome

### Risk Assessment
- Any risks of the proposed change (unintended scope shift, over-correction, etc.)
- Rated: Low / Medium / High

### Hermes Recommendation
- Approve as written / Approve with modifications / Hold for further review
- One sentence rationale

---

## Non-Negotiables

- No prompt is marked "approved" by Hermes -- that authority belongs to Arbiter
- Complete prompt text is always included -- no partials or summaries
- Risk must be assessed on every report
- Returned for revision if any section is missing or vague

---

*Source: Arbiter acceptance criteria for Hermes optimization pipeline*
*Last updated: 2026-03-30*
