# OPERATIONS → ARCHON MCP: Communication Standard

*How Operations feeds Archon MCP. What gets routed, format, and timing.*

---

## What Gets Routed to Archon MCP

- All field output from Operations agents (Argus, Calliope, Clio)
- Intelligence reports (Argus)
- Outreach activity reports (Calliope)
- Content output (Clio)
- Blockers requiring Command decision
- Escalations from RRIL (via Protos MCP → Operations → Archon MCP)

---

## Routing Format

```
ROUTING ENVELOPE
FROM: [Agent Name]
TO: Archon MCP
DATE: [YYYY-MM-DD HH:MM]
TYPE: [REPORT / BLOCKER / ESCALATION / OUTPUT]
PRIORITY: [CRITICAL / HIGH / STANDARD / LOW]
PAYLOAD: [Attached report or inline content]
```

---

## Timing

- Standard reports: per cycle schedule (end of run)
- Blockers: immediate
- Escalations: match the urgency of the original signal

---

## Archon MCP's Role

Archon MCP does not interpret — it routes. Operations agents should not expect decisions from Archon MCP. Decisions come from Command after routing.

---

*Last updated: 2026-03-30*
