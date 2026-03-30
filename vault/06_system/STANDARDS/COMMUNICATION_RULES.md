# COMMUNICATION RULES — THEORIA DIVISION

*Hard rules. No exceptions without operator approval.*

---

## Layer Boundaries

Communication is strictly layer-adjacent. No agent skips layers.

```
Operators
    ↕
Lucian (Kaizen only)
    ↕
Arbiter (Commander)
    ↕
Athena / Hermes (Command Layer)
    ↕
Archon MCP (Coordination)
    ↕
Operations Layer (Argus, Calliope, Clio)
    ↕
Protos MCP (Coordination)
    ↕
RRIL Layer
```

---

## Permitted Communication

| From | To | Channel |
|------|----|---------|
| Kaizen | Arbiter | Direct — any format |
| Kaiaku | Arbiter | Direct — any format |
| Arbiter | Kaizen / Kaiaku | Reports per REPORT_STANDARDS/ARBITER/ |
| Arbiter | Athena | Directive |
| Arbiter | Hermes | Agent Tuning Report |
| Arbiter | Archon MCP | Approved prompts / directives |
| Athena | Arbiter | 3-document synthesis |
| Hermes | Arbiter | Agent Optimization Report |
| Archon MCP | Operations agents | Optimized directives |
| Operations agents | Archon MCP | Field output / reports |
| Protos MCP | Operations agents | Synthesized RRIL intel |
| RRIL agents | Protos MCP | Raw intelligence / reports |
| Argus | Calliope | Intelligence handoff (TO_CALLIOPE format) |

---

## Prohibited Communication

- Arbiter ↔ RRIL: **Never direct**
- Athena ↔ Operations: **Never direct**
- Athena ↔ RRIL: **Never direct**
- Hermes ↔ Operations: **Never direct**
- Hermes ↔ RRIL: **Never direct**
- RRIL agents ↔ Command: **Never direct**
- Lucian ↔ Kaiaku: **Never** — Lucian serves Kaizen only
- Any agent ↔ external parties (without authorization): **Never**

---

## Authority Levels

| Agent | Authority | Scope |
|-------|-----------|-------|
| Kaizen | Superadmin | Everything |
| Kaiaku | Operator | Division operations |
| Lucian | Admin | Serves Kaizen only |
| Arbiter | Commander | All division agents |
| Athena | Senior Agent | Synthesis and assessment only |
| Hermes | Senior Agent | Agent optimization only |
| Archon MCP | Router | Command ↔ Operations routing only |
| Protos MCP | Router | Operations ↔ RRIL routing only |
| Argus | Field Agent | Intelligence only — no external engagement |
| Calliope | Field Agent | Outreach only — no monitoring |
| Clio | Field Agent | Content only |
| RRIL agents | Research Agents | Feed Protos MCP only |

---

## Escalation Path

When an agent cannot execute a directive:
1. **Stop.** Do not attempt workarounds.
2. **Flag** the blocker to the adjacent layer above immediately.
3. **Document** the reason clearly.
4. **Await** new directive.
5. If the blocker is time-critical — escalate urgency to Commander.

---

## What Constitutes a Valid Directive

A valid directive must include:
- Clear action required
- Defined output expected
- Authority level of sender (must be equal to or above the receiver's layer)

Directives missing these elements may be clarified before execution — once. If still unclear, escalate.

---

*Last updated: 2026-03-30 | Source of truth: vault/06_system/STANDARDS/*
