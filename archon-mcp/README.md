# Archon — Coordination Layer

**Division:** Theoria
**Type:** Shared MCP Skill
**Status:** Operational

---

## Overview

Archon is not an agent. It is the coordination protocol loaded by every Theoria agent at runtime. The full protocol lives in `SKILL.md`. The schemas live in `vault/06_system/STANDARDS/REPORT_STANDARDS/SCHEMAS/`.

---

## Directory Structure

```
workspace/archon-mcp/
├── PANTHEON_POINTER.md   ← Vault boot sequence
├── ARCHON.md             ← Identity file
├── SKILL.md              ← Full coordination protocol (source of truth)
└── README.md             ← This file
```

**Schemas** live in the shared vault (all agents reference them):
```
vault/06_system/STANDARDS/REPORT_STANDARDS/SCHEMAS/
├── report.json           ← JSON Schema for all agent reports
└── directive.json        ← JSON Schema for Hermes directives
```

---

## Updating Archon

1. Edit `SKILL.md` or the relevant schema in `vault/06_system/STANDARDS/REPORT_STANDARDS/SCHEMAS/`
2. All agents pick up changes on their next session start
3. To force reload mid-session: restart the relevant agent session

---

## Ownership

Changes to Archon require Kaizen approval. Hermes may propose updates. Arbiter may request changes. No Operations agent may modify this protocol.

---

## Version History

| Version | Date | Change |
|---------|------|--------|
| 1.0 | 2026-03-29 | Initial release. Full protocol for Argus, Calliope, Athena, Hermes, Arbiter. |
| 1.1 | 2026-03-30 | Migrated to workspace/archon-mcp/. Removed redundant content. |

---

*Last updated: 2026-03-30*
