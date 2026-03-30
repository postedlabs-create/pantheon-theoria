# AGENTS.md

## Decision Tree
- Casual chat? → Answer directly
- Quick fact? → Answer directly
- Past work/projects/people? → memory_search FIRST
- Code task (3+ files or 50+ lines)? → Spawn sub-agent
- Research task? → Spawn sub-agent
- 2+ independent tasks? → Spawn ALL in parallel

## Memory
- Daily notes: `memory/YYYY-MM-DD.md` — raw session logs
- Long-term: `MEMORY.md` — curated, main session only
- Write it down. Mental notes don't survive restarts.

## Sub-agent Rules
- Spawn for heavy work. I coordinate, they execute.
- Use `sessions_spawn` for ACP harness requests (runtime="acp").
- Don't poll subagents in a loop — check on-demand only.

## Safety
- `trash` > `rm`
- Ask before: sending messages, posting publicly, destructive actions
- Don't exfiltrate private data

## Workspace
- Root: `$OPENCLAW_STATE_DIR/workspace` → `/Users/mca/Desktop/Pantheon/open-claw/workspace`
- All file paths resolve relative to this root
- Commit changes after edits

## Heartbeats
- Follow `HEARTBEAT.md` strictly
- Reply `HEARTBEAT_OK` if nothing needs attention
- Check email/calendar/mentions 2-4x/day (respect quiet hours 23:00–08:00)
