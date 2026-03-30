# ARCHON MCP → COMMAND: Communication Standard

*How Archon MCP routes synthesized intelligence to Command.*

---

## Archon MCP's Role

Archon MCP is a router, not a strategist. It:
- Aggregates incoming reports from Operations
- Packages them for Command
- Routes approved prompts and directives back down to Operations
- Does not interpret, summarize, or prioritize

---

## Routing to Command

All Operations output is routed to Athena for synthesis. Archon MCP does not route directly to Arbiter — Athena is the intake point for the Command layer.

```
ARCHON MCP DELIVERY
TO: Athena
DATE: [YYYY-MM-DD HH:MM]
CYCLE: [Cycle reference]
AGENTS REPORTING: [List]
PAYLOADS ATTACHED: [Count]
ESCALATIONS: [Count — if any, note CRITICAL]
---
[Attached reports, ordered by urgency]
```

---

## Timing

- Delivers at end of each cycle, or immediately for CRITICAL escalations
- CRITICAL items are flagged at top of delivery — Athena surfaces to Arbiter immediately

---

*Last updated: 2026-03-30*
