# AGENT_PROFILES.md — Division Agent Reference

*Last updated: 2026-03-30 | Maintained by Hermes — Agent Manager, Theoria Division*

---

## Operators (above division — not managed by Hermes)

| Name | Role | Authority |
|------|------|-----------|
| Kaizen | Primary Operator | Superadmin |
| Kaiaku | Secondary Operator | Operator |
| Lucian | Kaizen's personal agent — Admin | Above division, serves Kaizen only |

---

## Commander

### Arbiter
- **Role:** Division Commander
- **Reports to:** Operators
- **Machine:** Kaizen's MacBook Pro (macOS)
- **Workspace:** `open-claw/workspace/arbiter/`
- **Scaffold files:** ARBITER.md, DIVISION_STRUCTURE.md, MISSION.md
- **Status:** ✅ Live

---

## Command Layer

### Athena
- **Role:** Chief Strategist — synthesis, assessment, strategic reporting
- **Reports to:** Arbiter
- **Machine:** Kaizen's Mac
- **Workspace:** `open-claw/workspace/athena/`
- **Scaffold files:** ATHENA.md, AGENT_EVALUATION_CRITERIA.md, KPI_FRAMEWORK.md, REPORT_FORMATS.md, SYNTHESIS_PLAYBOOK.md
- **Status:** ✅ Live
- **Behavioral patterns:** *(log as they emerge)*

### Hermes (self)
- **Role:** Agent Manager — optimization, prompt engineering, delivery
- **Reports to:** Arbiter
- **Machine:** Kaizen's Mac
- **Workspace:** `open-claw/workspace/hermes/`
- **Scaffold files:** HERMES.md, AGENT_PROFILES.md, AGENT_OPTIMIZATION_REPORT_TEMPLATE.md, OPTIMIZATION_LOG.md, PROMPT_WRITING_FRAMEWORK.md
- **Status:** ✅ Live

---

## Coordination Layer

### Archon MCP
- **Role:** Router between Command and Operations
- **Type:** MCP coordination agent
- **Machine:** Kaizen's Mac
- **Workspace:** `open-claw/workspace/archon-mcp/`
- **Status:** ✅ Live
- **Notes:** No prompt reaches a field agent without Arbiter approval + Archon routing

### Protos MCP
- **Role:** Router between Operations and RRIL
- **Type:** MCP coordination agent
- **Status:** ⬜ To Build
- **Notes:** Will activate when first RRIL agent is ready

---

## Operations Layer

### Argus
- **Role:** Intelligence Scout
- **Machine:** Kaizen's MacBook Pro (macOS)
- **Workspace:** `open-claw/workspace/argus/`
- **Scaffold files:** ARGUS.md, SCAN_PLAYBOOK.md, SKILL.md, POSTED_INTELLIGENCE_SKILL.md
- **Status:** ✅ Live
- **Behavioral patterns:** *(log as they emerge)*
- **Known issues:** *(none logged)*

### Calliope
- **Role:** Outreach Agent
- **Machine:** Kaiaku's Windows PC
- **Workspace:** Calliope's local OpenClaw workspace
- **Status:** ✅ Live
- **Behavioral patterns:** *(log as they emerge)*
- **Known issues:** *(none logged)*

### Clio
- **Role:** Content Writer
- **Status:** ⬜ To Build
- **Machine:** TBD
- **Notes:** Profile to be built at activation

### TBD Operations Agent
- **Role:** TBD
- **Status:** ⬜ To Build

---

## RRIL Layer (all to build)

| Agent | Role | Status |
|-------|------|--------|
| Analytics Trend Tracker | Analytics & trend intelligence | ⬜ To Build |
| RSS Feed Synthesizer | Feed monitoring & synthesis | ⬜ To Build |
| Market & Competition Analyst | Competitive intelligence | ⬜ To Build |
| Behavioral Analyst | Behavioral profiling | ⬜ To Build |
| Sentiment & Brand Pulse | Brand & sentiment monitoring | ⬜ To Build |

---

## Profile Update Protocol

When a new agent activates, Hermes adds:
1. Machine and workspace path
2. Scaffold files list
3. Initial behavioral observations (first 3 output cycles)
4. Any known edge cases or drift tendencies

Profiles are living documents. Update after every optimization cycle.
