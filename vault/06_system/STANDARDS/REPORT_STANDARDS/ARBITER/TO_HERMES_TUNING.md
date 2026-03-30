# ARBITER → HERMES: Agent Tuning Report Format

*Arbiter issues this after reviewing Athena's Field Agent Assessment.*

---

## Format

```
# AGENT TUNING REPORT
From: Arbiter
To: Hermes
Date: YYYY-MM-DD
Tuning Report ID: ATR_YYYY-MM-DD_NNN
Source: Field Agent Assessment [reference]
Agents to optimize: [List]
Priority: [Immediate / This cycle / Next cycle]

---

## DIRECTIVE SUMMARY
[1–2 sentences. What Hermes must accomplish.]

---

## AGENT: [Name]

### Issue
[What Athena identified — in Arbiter's framing of priority and urgency]

### Objective
[What the optimized agent should do differently]

### Constraints
[What must NOT change — behaviors or outputs to preserve]

### Guidance for Hermes
[Any specific direction on approach — e.g., tighten the scan criteria, broaden tone range, adjust escalation threshold]

---

## [ADDITIONAL AGENTS — same structure]

---

## APPROVAL REQUIREMENT
Hermes will return an Agent Optimization Report before any prompt or scope changes are applied.
Arbiter must approve before implementation.

---
Issued by Arbiter — Commander, Theoria Division
```

---

*Last updated: 2026-03-30*
