# PROTOS MCP → RRIL: Directive Format

*How Protos MCP delivers directives from Operations or Command down to RRIL agents.*

---

## Format

```
# PROTOS MCP DIRECTIVE
From: Protos MCP
To: [RRIL Agent Name]
Date: YYYY-MM-DD HH:MM
Directive ID: PROTOS_DIR_YYYY-MM-DD_NNN
Authority Source: [Arbiter via Command / Operations agent]
Priority: [CRITICAL / HIGH / STANDARD]

---

## DIRECTIVE
[What the RRIL agent must do — specific focus, keywords, timeframe, depth]

## SCOPE
[What to look for — platforms, topics, competitors, keywords]

## EXPECTED OUTPUT
Format: vault/06_system/STANDARDS/REPORT_STANDARDS/RRIL/[AGENT]/TO_PROTOS.md
Destination: Protos MCP
Deadline: [When]

## ACKNOWLEDGMENT REQUIRED
Reply with:
- Receipt confirmation
- Execution plan
- Any blockers

---
Routed by Protos MCP — Coordination Layer, Theoria Division
```

---

*Last updated: 2026-03-30*
