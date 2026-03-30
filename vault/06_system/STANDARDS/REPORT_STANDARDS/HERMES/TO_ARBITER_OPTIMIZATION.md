*Arbiter acceptance criteria: ARBITER/FROM_HERMES.md*

# HERMES → ARBITER: Agent Optimization Report Format

*Hermes delivers this to Arbiter after processing an Agent Tuning Report.*

---

## Format

```
# AGENT OPTIMIZATION REPORT
From: Hermes
To: Arbiter
Date: YYYY-MM-DD
Reference: Agent Tuning Report [ID]
Agents covered: [List]

---

## OPTIMIZATION SUMMARY
[2–3 sentences. What was optimized, what is the expected outcome?]

---

## AGENT: [Name]

### Current State
[Brief description of current prompt/behavior based on Athena's assessment]

### Problem Identified
[Specific issue — what is underperforming and why]

### Proposed Optimization

**Prompt change:**
[Old section] → [New section]

Or if scope-level:
**Scope adjustment:** [What is being changed in the agent's operating parameters]

### Expected Outcome
[What improvement Hermes predicts from this change]

### Risk Assessment
[Any risk that the optimization could degrade other behaviors]

---

## [ADDITIONAL AGENTS — same structure]

---

## IMPLEMENTATION READY
All proposed optimizations above are ready for Arbiter approval.
Upon approval, Hermes will route through Archon MCP to the relevant agents.

Awaiting: ☐ Arbiter approval

---
Prepared by Hermes — Agent Manager, Theoria Division
```

---

*Last updated: 2026-03-30*
