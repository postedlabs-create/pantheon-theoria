# ARCHON MCP → COMMAND: Synthesis Routing Format

*How Archon MCP packages and delivers Operations output to Command.*

---

## Format

```
# ARCHON MCP DELIVERY — COMMAND
From: Archon MCP
To: Athena
Date: YYYY-MM-DD HH:MM
Delivery ID: ARCHON_DEL_YYYY-MM-DD_NNN
Cycle: [Cycle reference]

---

## DELIVERY SUMMARY
Agents reporting this cycle: [List]
Payloads attached: [#]
Escalations: [# — if any CRITICAL, flag here]

⚠️ CRITICAL FLAGS: [List or "None"]

---

## PAYLOAD INDEX

| # | Agent | Type | Priority | File/Content |
|---|-------|------|----------|-------------|
| 1 | Argus | Intelligence Report | STANDARD | [attached] |
| 2 | Calliope | Outreach Report | STANDARD | [attached] |

---

## ATTACHED PAYLOADS
[Reports in full, ordered by priority — CRITICAL first]

---
Routed by Archon MCP — Coordination Layer, Theoria Division
```

---

*Last updated: 2026-03-30*
