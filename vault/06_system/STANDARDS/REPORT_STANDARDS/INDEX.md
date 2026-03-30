# REPORT STANDARDS — MASTER INDEX

*Two-way lookup: by agent and by layer. One row per format.*

---

## Schemas (JSON Validation)

| Schema | File | Enforces |
|--------|------|----------|
| Agent Report Schema | SCHEMAS/report.json | All agent report payloads (Argus, Calliope, Athena) |
| Directive Schema | SCHEMAS/directive.json | All Hermes directives to Operations agents |

---

## By Agent

| Agent | Report | File |
|-------|--------|------|
| Argus | Intelligence handoff to Calliope | ARGUS/TO_CALLIOPE.md |
| Argus | Daily intelligence report to Athena | ARGUS/TO_ATHENA.md |
| Argus | Standard scan output | ARGUS/SCAN_REPORT.md |
| Calliope | Flagged thread escalation to Theoria | CALLIOPE/TO_THEORIA.md |
| Calliope | Outreach activity report | CALLIOPE/OUTREACH_REPORT.md |
| Athena | Unified Executive Summary to Arbiter | ATHENA/TO_ARBITER_SUMMARY.md |
| Athena | Daily Strategic Report to Arbiter | ATHENA/TO_ARBITER_STRATEGIC.md |
| Athena | Field Agent Assessment to Arbiter | ATHENA/TO_ARBITER_ASSESSMENT.md |
| Hermes | Agent Optimization Report to Arbiter | HERMES/TO_ARBITER_OPTIMIZATION.md |
| Arbiter | Acceptance criteria for Athena reports | ARBITER/FROM_ATHENA.md |
| Arbiter | Acceptance criteria for Hermes reports | ARBITER/FROM_HERMES.md |
| Arbiter | Agent Tuning Report to Hermes | ARBITER/TO_HERMES_TUNING.md |
| Arbiter | Mission update to Operators | ARBITER/TO_OPERATORS_MISSION.md |
| Archon MCP | Directive to Operations | ARCHON_MCP/TO_OPERATIONS.md |
| Archon MCP | Synthesis to Command | ARCHON_MCP/TO_COMMAND.md |
| Protos MCP | RRIL synthesis to Operations | PROTOS_MCP/TO_OPERATIONS.md |
| Protos MCP | Directive to RRIL | PROTOS_MCP/TO_RRIL.md |
| Analytics Trend Tracker | Report to Protos MCP | RRIL/ANALYTICS_TRACKER/TO_PROTOS.md |
| RSS Feed Synthesizer | Report to Protos MCP | RRIL/RSS_SYNTHESIZER/TO_PROTOS.md |
| Market & Competition Analyst | Report to Protos MCP | RRIL/MARKET_ANALYST/TO_PROTOS.md |
| Behavioral Analyst | Report to Protos MCP | RRIL/BEHAVIORAL_ANALYST/TO_PROTOS.md |
| Sentiment & Brand Pulse | Report to Protos MCP | RRIL/SENTIMENT_PULSE/TO_PROTOS.md |

---

## By Layer

### RRIL → Coordination
| RRIL Agent | Format File |
|-----------|------------|
| All RRIL agents | RRIL/[AGENT]/TO_PROTOS.md |
| Protos MCP → RRIL | LAYERS/RRIL_TO_MCP.md |

### Coordination → Operations
| Route | Format File |
|-------|------------|
| Protos MCP → Operations | PROTOS_MCP/TO_OPERATIONS.md |
| Operations → Archon MCP | LAYERS/OPERATIONS_TO_MCP.md |

### Operations → Command
| Route | Format File |
|-------|------------|
| Argus, Calliope → Archon MCP | LAYERS/OPERATIONS_TO_MCP.md |
| Archon MCP → Command | ARCHON_MCP/TO_COMMAND.md |
| Command → Operations | LAYERS/COMMAND_TO_OPERATIONS.md |

### Command → Commander
| Route | Format File |
|-------|------------|
| Athena → Arbiter (3 docs) | ATHENA/TO_ARBITER_*.md |
| Hermes → Arbiter | HERMES/TO_ARBITER_OPTIMIZATION.md |

### Commander → Operators
| Route | Format File |
|-------|------------|
| Arbiter → Kaizen / Kaiaku | LAYERS/COMMAND_TO_OPERATORS.md |
| Arbiter → Operators mission | ARBITER/TO_OPERATORS_MISSION.md |

### Operators → Commander
| Route | Format File |
|-------|------------|
| Kaizen / Kaiaku → Arbiter | LAYERS/OPERATORS_TO_COMMAND.md |

---

*Last updated: 2026-03-30 | Source of truth: vault/06_system/STANDARDS/REPORT_STANDARDS/*
