# Agent Scaffold — New Agent Onboarding Standard

*Use these templates when creating any new agent in Theoria Division.*

---

## What This Is

Standard file templates that every new agent folder must contain. This ensures all agents share the same baseline vault references, identity structure, and project context from day one.

---

## Templates

| Template | Purpose | Creates |
|----------|---------|---------|
| `PANTHEON_POINTER.template.md` | Shared vault reading list | `<agent>/PANTHEON_POINTER.md` |
| `IDENTITY.template.md` | Agent identity and role definition | `<agent>/<AGENT_NAME>.md` |

---

## How to Use

### Manual
1. Create the agent folder: `workspace/<agent-name>/`
2. Copy `PANTHEON_POINTER.template.md` -> `<agent-name>/PANTHEON_POINTER.md`
3. Copy `IDENTITY.template.md` -> `<agent-name>/<AGENT_NAME>.md`
4. Replace all `{{placeholders}}` with agent-specific values
5. Create any agent-specific report standards in `vault/06_system/STANDARDS/REPORT_STANDARDS/<AGENT_NAME>/`
6. Update `vault/06_system/WORLD/THEORIA_DIVISION.md` to include the new agent

### Script
```bash
./scripts/new-agent.sh <agent-name> "<Agent Display Name>" "<Agent Role>"
```

---

## Placeholders

| Placeholder | Description | Example |
|-------------|-------------|---------|
| `{{AGENT_NAME}}` | Display name, capitalized | Clio |
| `{{AGENT_ROLE}}` | Role title | Content Strategist |
| `{{REPORTS_TO}}` | Direct superior | Athena (Chief Strategist) |
| `{{LAYER}}` | Operations / Command / Coordination / RRIL | Operations |
| `{{MISSION}}` | One-paragraph mission statement | — |
| `{{DATE}}` | Creation date | 2026-03-30 |

---

## Checklist for New Agent

- [ ] Agent folder created in `workspace/`
- [ ] PANTHEON_POINTER.md in place with correct agent name
- [ ] Identity file created with all placeholders filled
- [ ] Report standards created in vault (if agent produces reports)
- [ ] Report standards INDEX.md updated
- [ ] THEORIA_DIVISION.md updated with new agent
- [ ] hermes/AGENT_PROFILES.md updated with new agent entry
- [ ] Arbiter DIVISION_STRUCTURE.md updated

---

*Location: vault/06_system/STANDARDS/AGENT_SCAFFOLD/*
