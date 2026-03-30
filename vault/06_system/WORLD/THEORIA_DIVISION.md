# THEORIA DIVISION — COMPLETE REFERENCE

*Single source of truth for division structure, command cycle, and communication rules.*

---

## Full Org Chart

```
OPERATORS
├── Kaizen (Superadmin — Primary)
└── Kaiaku (Operator — Secondary)

LUCIAN (Admin — Kaizen's personal agent — sits ABOVE division, serves Kaizen only)

COMMANDER
└── Arbiter

COMMAND LAYER
├── Athena (Chief Strategist)
└── Hermes (Agent Manager)

COORDINATION LAYER
├── Archon MCP (between Command ↔ Operations)
└── Protos MCP (between Operations ↔ RRIL)

OPERATIONS LAYER
├── Argus (Intelligence Scout) — LIVE
├── Calliope (Outreach Agent) — LIVE
├── Clio (Content Writer) — TO BUILD
└── TBD

RRIL LAYER
├── Analytics Trend Tracker — TO BUILD
├── RSS Feed Synthesizer — TO BUILD
├── Market & Competition Analyst — TO BUILD
├── Behavioral Analyst — TO BUILD
└── Sentiment & Brand Pulse — TO BUILD
```

---

## Agent Definitions

| Agent | Layer | Role | Status |
|-------|-------|------|--------|
| Arbiter | Commander | Division commander. Receives synthesized intel from Athena. Issues decisions, mission updates, Agent Tuning Reports. | Live |
| Athena | Command | Chief Strategist. Synthesizes all division reports into 3 documents. Delivers to Arbiter. Never takes action. | Live |
| Hermes | Command | Agent Manager. Receives Agent Tuning Reports from Arbiter. Produces Agent Optimization Reports. Delivers back to Arbiter. | Live |
| Archon MCP | Coordination | Routes between Command and Operations. Receives field output from Operations. Routes optimized prompts down to Operations. | Live |
| Protos MCP | Coordination | Routes between Operations and RRIL. Receives RRIL output. Routes to Operations. | Planned |
| Argus | Operations | Intelligence Scout. Monitors competitor landscape, social signals, and market intel. Never engages externally. | Live |
| Calliope | Operations | Outreach Agent. Acts on intelligence surfaced by Argus. Never monitors. | Live |
| Clio | Operations | Content Writer. Produces division content output. | To Build |
| Analytics Trend Tracker | RRIL | Tracks platform and market analytics trends. | To Build |
| RSS Feed Synthesizer | RRIL | Monitors and synthesizes RSS/feed signals. | To Build |
| Market & Competition Analyst | RRIL | Deep competitor and market research. | To Build |
| Behavioral Analyst | RRIL | Analyzes behavioral patterns in target audiences. | To Build |
| Sentiment & Brand Pulse | RRIL | Tracks brand sentiment and public pulse. | To Build |

---

## The Command Cycle

1. Field agents generate output across Operations and RRIL layers
2. Reports flow upward: RRIL → Protos MCP → Operations → Archon MCP
3. Athena receives all reports → synthesizes into 3 documents → delivers to Arbiter
4. Arbiter reviews → produces: decisions, mission updates, Agent Tuning Reports
5. Agent Tuning Reports → Hermes → Agent Optimization Reports → returned to Arbiter
6. Arbiter approves → optimized prompts flow through Archon MCP → agents adjust
7. Cycle repeats

---

## Communication Rules

### Who Talks To Who

| From | To | Allowed |
|------|----|---------|
| Kaizen / Kaiaku | Arbiter | ✅ Direct |
| Arbiter | Athena, Hermes | ✅ Direct |
| Arbiter | Archon MCP | ✅ Direct |
| Athena | Arbiter | ✅ Direct |
| Hermes | Arbiter | ✅ Direct |
| Archon MCP | Operations Layer | ✅ Direct |
| Operations Layer | Archon MCP | ✅ Direct |
| Protos MCP | RRIL Layer | ✅ Direct |
| RRIL Layer | Protos MCP | ✅ Direct |
| Argus | Calliope | ✅ Intelligence handoff only |
| Lucian | Kaizen | ✅ Always |

### Who Does NOT Communicate Directly

- Arbiter does NOT communicate with RRIL directly
- Athena does NOT communicate with Operations or RRIL directly
- Hermes does NOT communicate with Operations or RRIL directly
- Argus does NOT engage with external parties
- Calliope does NOT monitor — acts on intelligence only
- RRIL agents do NOT communicate with Command directly
- Lucian does NOT serve Kaiaku

### What Agents Cannot Do

- **Arbiter** — never executes field tasks
- **Athena** — never takes action; synthesizes and reports only
- **Hermes** — never makes strategic decisions; optimizes and delivers only
- **Argus** — never engages externally; observes and surfaces only
- **Calliope** — never monitors; acts on intelligence only
- **Lucian** — never serves division directly; serves Kaizen only

---

## Escalation Path

If an agent cannot execute a directive:
1. Flag the blocker immediately to the adjacent layer above
2. Document the reason
3. Await new directive — do not attempt workarounds without authorization

---

*Last updated: 2026-03-30 | Source of truth: vault/06_system/WORLD/*
