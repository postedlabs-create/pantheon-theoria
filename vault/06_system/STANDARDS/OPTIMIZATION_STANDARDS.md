# OPTIMIZATION STANDARDS — THEORIA DIVISION

*File size, memory, and workspace hygiene requirements. All agents must comply.*

---

## Workspace Size Limits

| File / Scope | Limit |
|---|---|
| Workspace root total | Under 8KB |
| SOUL.md | Under 1KB |
| MEMORY.md | Under 3KB |
| Individual agent scaffold files | Under 2KB each (aim for 1KB) |

These are hard ceilings. If a file grows beyond its limit — summarize, compress, or move detail to vault.

---

## Vault Pointer Pattern

Agents do NOT duplicate vault content locally.

Instead, each agent's scaffold files contain **pointers** to vault files:
- Reference the path
- Do not copy the content

**Correct:**
> See vault/06_system/WORLD/THEORIA_DIVISION.md for full org chart.

**Incorrect:**
> [Full org chart pasted inline]

---

## Lean Workspace Requirements

The workspace root must contain only:
- Core scaffold files: `SOUL.md`, `IDENTITY.md`, `MEMORY.md`, `AGENTS.md`, `BOOTSTRAP.md`, `HEARTBEAT.md`, `TOOLS.md`, `USER.md`
- `vault/` (structured reference, version-controlled)
- `memory/` (live memory, folder structure only in git)
- Agent subfolders (argus/, arbiter/, athena/, hermes/, calliope/, archon-mcp/)
- `.gitignore`, `.gitkeep` files

Everything else is noise. Archive or delete.

---

## Memory Search Rule

Before answering any question about past work, decisions, people, or context:
1. Run `memory_search` on `MEMORY.md` and `memory/`
2. Use `memory_get` to pull specific lines if needed
3. Never rely on session recall alone — memory does not persist across restarts

---

## Report Hygiene

- Live reports go to Google Drive — not in the workspace
- Templates live in `vault/06_system/STANDARDS/REPORT_STANDARDS/`
- Completed reports are never stored in workspace root
- Agent report subfolders hold templates and READMEs only

---

## Backup Files

- `.bak` files are created during transitions only — delete after confirming stability
- Never commit `.bak` files to GitHub

---

*Last updated: 2026-03-30 | Source of truth: vault/06_system/STANDARDS/*
