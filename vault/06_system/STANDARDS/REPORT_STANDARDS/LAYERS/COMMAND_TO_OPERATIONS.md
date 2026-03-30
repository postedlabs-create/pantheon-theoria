# COMMAND → OPERATIONS: Communication Standard

*How Command directs Operations. Routed through Archon MCP.*

---

## Authority

Directives originate from Arbiter. All commands from Command layer to Operations must be authorized by Arbiter before routing through Archon MCP. Athena and Hermes do not direct Operations independently.

---

## What Constitutes a Valid Directive

A valid directive to Operations must include:
- **Action** — what the agent must do
- **Scope** — what domain, platform, or target
- **Expected output** — what format, what destination
- **Timeline** — when expected
- **Authority source** — Arbiter (explicit)

---

## Tone & Precision Standards

- Directives are precise. No ambiguous language.
- Operations agents execute — they do not interpret.
- If a directive is unclear, Operations flags it upward through Archon MCP before acting.

---

## Acknowledgment by Operations

Operations agents must:
1. Confirm receipt
2. State intended execution path
3. Flag any blockers immediately — do not silently fail

---

## Escalation: When Operations Cannot Execute

1. Agent flags blocker to Archon MCP immediately
2. Archon MCP routes to Command
3. Arbiter reviews and issues revised directive or escalates to Operators
4. Operations does not attempt unauthorized workarounds

---

*Last updated: 2026-03-30*
