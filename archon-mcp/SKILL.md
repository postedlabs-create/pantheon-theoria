---
name: archon
description: Coordination layer for the Theoria Division. Defines the intelligence pipeline, Drive paths, report schemas, directive formats, and handoff protocol for all Operations agents (Argus, Calliope, Clio) and Command agents (Athena, Hermes, Arbiter).
metadata: {"openclaw":{"always":true,"emoji":"⚙️"}}
---

# Archon — Coordination Protocol
**Version:** 1.0  
**Division:** Theoria  
**Scope:** All Theoria Division agents (Kaizen's Mac + Kaiaku's PC)

Archon is not an agent. It is the law. Every agent in the Theoria Operations layer must follow this protocol exactly. No exceptions. No improvisation on paths, formats, or handoff rules.

---

## 1. Drive Root

All division files live under a single Google Drive account:

- **Account:** postedlabs.io@gmail.com
- **Division root:** `Pantheon/Theoria/`

---

## 2. Agent Path Registry

Each agent has exactly one read path and one write path. Never cross them.

| Agent | Reads From | Writes To |
|-------|-----------|-----------|
| Argus | *(no read — observes platforms directly)* | `Pantheon/Theoria/Argus/reports/` |
| Calliope | `Pantheon/Theoria/Argus/reports/` | `Pantheon/Theoria/Calliope/reports/` |
| Clio | *(TBD — pending scope definition)* | `Pantheon/Theoria/Clio/reports/` |
| Athena | `Pantheon/Theoria/Argus/reports/` + `Pantheon/Theoria/Calliope/reports/` | `Pantheon/Theoria/Commander/` |
| Arbiter | `Pantheon/Theoria/Commander/` | *(reads and issues directives verbally — does not write to Drive)* |
| Hermes | Arbiter's directives (verbal/session) | `Pantheon/Theoria/Directives/<agentId>/` |

---

## 3. Report Format

Every agent that writes a report MUST follow this format exactly.

### 3a. File Naming Convention

```
YYYY-MM-DD_HH-MM_<agentId>_<report-type>.md
```

Examples:
- `2026-03-29_08-00_argus_intel-report.md`
- `2026-03-29_09-15_calliope_outreach-report.md`
- `2026-03-29_10-00_athena_synthesis.md`

### 3b. File Structure

Every report file is a Markdown document wrapping a JSON data block.

```markdown
# [Agent Name] — [Report Type]
**Date:** YYYY-MM-DD  
**Time:** HH:MM  
**Cycle:** [cycle number or identifier]  
**Status:** [COMPLETE | PARTIAL | FLAGGED]

## Summary
[2–4 sentence plain-language summary of this report's key finding.]

## Data

\`\`\`json
{
  "agent": "<agentId>",
  "report_type": "<type>",
  "timestamp": "<ISO 8601>",
  "cycle": "<cycle id>",
  "status": "COMPLETE | PARTIAL | FLAGGED",
  "payload": { ... }
}
\`\`\`

## Notes
[Optional. Flags, anomalies, edge cases, or observations not captured in the payload.]
```

### 3c. Status Definitions

| Status | Meaning |
|--------|---------|
| `COMPLETE` | Full cycle run. All expected output produced. |
| `PARTIAL` | Run completed but some expected output is missing. Explain in Notes. |
| `FLAGGED` | Something requires Athena or Arbiter attention. Must include a Notes section. |

---

## 4. Agent-Specific Payload Schemas

### 4a. Argus — Intel Report Payload

```json
{
  "agent": "argus",
  "report_type": "intel-report",
  "timestamp": "",
  "cycle": "",
  "status": "",
  "payload": {
    "platforms_scanned": ["reddit", "discord", "whop"],
    "total_signals": 0,
    "leads": [
      {
        "id": "lead_001",
        "platform": "reddit",
        "username": "",
        "profile_url": "",
        "post_or_thread_url": "",
        "signal_type": "pain_point | feature_request | competitor_mention | icp_match",
        "summary": "",
        "score": 0,
        "score_reasoning": "",
        "recommended_action": "calliope_outreach | monitor | discard"
      }
    ],
    "calliope_handoff": ["lead_001"]
  }
}
```

**Score:** 1–10. 10 = perfect ICP match, urgent pain, high intent.  
**calliope_handoff:** Array of lead IDs Argus is explicitly passing to Calliope this cycle.

---

### 4b. Calliope — Outreach Report Payload

```json
{
  "agent": "calliope",
  "report_type": "outreach-report",
  "timestamp": "",
  "cycle": "",
  "status": "",
  "payload": {
    "leads_reviewed": 0,
    "leads_actioned": 0,
    "outreach_sent": [
      {
        "lead_id": "lead_001",
        "platform": "",
        "username": "",
        "dm_sent": true,
        "dm_summary": "",
        "timestamp": ""
      }
    ],
    "responses_received": [
      {
        "lead_id": "lead_001",
        "response_summary": "",
        "sentiment": "positive | neutral | negative",
        "next_action": "",
        "flag_for_command": false
      }
    ],
    "high_value_flags": [
      {
        "lead_id": "lead_001",
        "reason": "",
        "urgency": "high | medium"
      }
    ]
  }
}
```

**flag_for_command:** If `true`, Calliope must also set `status: "FLAGGED"` on the report and explain in the Notes section.

---

### 4c. Athena — Synthesis Payload

```json
{
  "agent": "athena",
  "report_type": "synthesis",
  "timestamp": "",
  "cycle": "",
  "status": "",
  "payload": {
    "sources_read": {
      "argus_reports": [],
      "calliope_reports": []
    },
    "division_health": "green | yellow | red",
    "health_reasoning": "",
    "kpis": {
      "leads_identified": 0,
      "outreach_sent": 0,
      "responses_received": 0,
      "positive_responses": 0,
      "high_value_flags": 0
    },
    "key_findings": [],
    "recommended_arbiter_actions": [],
    "agent_performance_notes": {
      "argus": "",
      "calliope": ""
    }
  }
}
```

Athena produces **three documents** per cycle for Arbiter, written to `Pantheon/Theoria/Commander/`:
1. `YYYY-MM-DD_athena_synthesis.md` — this report
2. `YYYY-MM-DD_athena_situation-brief.md` — plain language executive summary (no JSON required)
3. `YYYY-MM-DD_athena_tuning-candidates.md` — list of agents and behaviors that may need Hermes optimization

---

## 5. Directive Format

Hermes writes directives down to agents after Arbiter approves tuning decisions.

### File Location
```
Pantheon/Theoria/Directives/<agentId>/YYYY-MM-DD_directive.md
```

### File Structure

```markdown
# Directive — [Agent Name]
**Issued by:** Hermes (approved by Arbiter)  
**Date:** YYYY-MM-DD  
**Cycle:** [cycle]  
**Priority:** HIGH | STANDARD

## Instruction
[The optimization prompt or behavioral adjustment. Written by Hermes. Precise and unambiguous.]

## Context
[Why this directive was issued. What behavior is being corrected or improved.]

## Success Criteria
[How the agent will know it has correctly applied this directive.]

\`\`\`json
{
  "directive_id": "",
  "target_agent": "",
  "issued_by": "hermes",
  "approved_by": "arbiter",
  "timestamp": "",
  "priority": "HIGH | STANDARD",
  "type": "prompt_optimization | behavior_correction | scope_change",
  "instruction_summary": ""
}
\`\`\`
```

---

## 6. Operating Rules (Enforced by This Skill)

These rules are absolute. Any agent reading this skill must comply.

1. **Never write to another agent's path.** Argus writes only to `Argus/reports/`. Calliope writes only to `Calliope/reports/`. Never cross paths.
2. **Never read from a path above your layer.** Ops agents do not read from `Commander/`. That path belongs to Arbiter.
3. **Never skip the schema.** Every report must include the JSON data block. A Markdown-only report is incomplete.
4. **Flag don't suppress.** If something is wrong, anomalous, or uncertain — set `status: FLAGGED` and explain. Never hide signal.
5. **Argus never engages.** Argus writes intel. It never contacts leads, never DMs, never acts. Handoff only.
6. **Calliope never monitors.** Calliope reads Argus reports and acts. It does not run its own platform scans.
7. **Athena never acts.** Athena reads all ops reports and synthesizes. It does not send DMs, contact anyone, or make decisions.
8. **Hermes never decides.** Hermes converts Arbiter's direction into prompts. It does not originate strategy.
9. **Arbiter never executes field tasks.** Arbiter commands. Arbiter does not write DMs, run scans, or produce content.

---

## 7. Handoff Protocol

The flow is always linear. No skipping layers.

```
Argus → [writes intel report to Argus/reports/]
                  ↓
Calliope → [reads Argus/reports/, acts, writes to Calliope/reports/]
                  ↓
Athena → [reads both, writes 3 docs to Commander/]
                  ↓
Arbiter → [reads Commander/, issues direction]
                  ↓
Hermes → [converts direction to prompts, writes to Directives/<agentId>/]
                  ↓
Ops Agents → [read their Directives/, adjust behavior next cycle]
```

High-value flags from Calliope surface to Athena in the same cycle. Athena escalates to Arbiter in the synthesis. Arbiter decides response. Hermes executes direction next cycle.

---

## 8. Cycle Identifier Convention

Cycles are identified as: `YYYY-MM-DD_C<n>` where `<n>` is the cycle number for that day.

Example: `2026-03-29_C1` = first cycle on March 29, 2026.

If only one cycle runs per day, use `C1`. Multiple cycles increment: `C1`, `C2`, `C3`.

---

## 9. Quick Reference — What Each Agent Does With This Skill

| Agent | Uses Archon To |
|-------|---------------|
| Argus | Know where to write intel reports and what schema to use |
| Calliope | Know where to read Argus reports and where to write outreach reports |
| Athena | Know where to read all ops reports and where to write synthesis docs |
| Hermes | Know where to write directives and what format to use |
| Arbiter | Know where to read synthesis docs (Commander/) |
