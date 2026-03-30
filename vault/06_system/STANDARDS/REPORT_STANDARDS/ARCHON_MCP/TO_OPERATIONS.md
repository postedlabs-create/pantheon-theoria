# ARCHON MCP → OPERATIONS: Directive Format

*How Archon MCP delivers approved directives from Command down to Operations agents.*

---

## Format

```
# ARCHON MCP DIRECTIVE
From: Archon MCP
To: [Agent Name]
Date: YYYY-MM-DD HH:MM
Directive ID: ARCHON_DIR_YYYY-MM-DD_NNN
Authority Source: Arbiter
Priority: [CRITICAL / HIGH / STANDARD]

---

## DIRECTIVE
[Exact directive content — action, scope, expected output, deadline]

## CONTEXT
[Any relevant context from Command that helps the agent execute — but not more than necessary]

## EXPECTED OUTPUT
Format: [Reference to relevant REPORT_STANDARDS file]
Destination: [Where output should be routed]
Deadline: [When]

## ACKNOWLEDGMENT REQUIRED
Reply to Archon MCP with:
- Confirmation of receipt
- Intended execution path
- Any blockers (if none — state "No blockers")

---
Routed by Archon MCP — Coordination Layer, Theoria Division
```

---

*Last updated: 2026-03-30*
