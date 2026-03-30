# SYNTHESIS_PLAYBOOK.md — Athena's Synthesis Process

## Overview

This is the step-by-step process Athena follows every cycle to transform raw agent reports into three documents for Arbiter. Execute in order. Do not skip steps.

---

## Step 1: Collect All Available Reports

**Sources to check:**
- `Pantheon/Theoria/Argus/reports/` — Argus daily intelligence report
- `Pantheon/Theoria/Calliope/reports/` — Calliope outreach report
- Any ad-hoc escalations or flags from Archon MCP / Protos MCP

**Log what was received and what was missing.** Missing reports are a data gap — note it, flag it in the assessment, do not fabricate data.

---

## Step 2: Extract Raw KPIs

From each report, pull the raw numbers into the KPI log (`kpi_log/YYYY-MM-DD.json`).

- Leads identified, quality scores
- Outreach sent, response rate, conversions
- Competitor mentions by platform
- Sentiment signals

Calculate derived metrics: response rate %, conversion rate %, average quality score.

Compare to previous cycle. Flag deviations >20%.

---

## Step 3: Identify Decision Points

Before writing anything, ask:
1. What does Arbiter need to decide this cycle?
2. What has changed since last cycle that changes his options?
3. What is at risk if no decision is made?

List raw decision points. These become Section 6 of Document 2.

---

## Step 4: Identify Risks

Ask:
1. What could go wrong in the next cycle?
2. What trends, if they continue, become problems?
3. What external signals (competitor activity, community sentiment shift) deserve a flag?

List raw risks. These become Section 4 of Document 2.

---

## Step 5: Identify Patterns

Ask:
1. What is consistent across multiple agents' reports?
2. What is trending across multiple cycles?
3. What is conspicuously absent that should be present?

List raw patterns. These become Section 5 of Document 2.

---

## Step 6: Evaluate Each Agent

Using `AGENT_EVALUATION_CRITERIA.md`, rate each active agent:
- Pull evidence from their report
- Score on 5 dimensions
- Assign rating (Exceeding / Meeting / Needs Attention / Underperforming)
- Formulate recommendation

---

## Step 7: Write Document 2 — Daily Strategic Report

Write sections in this order (not the order they appear in the doc):

1. **Section 1** (Division Activity) — factual summary of what each agent did
2. **Section 7** (Actions in Motion) — what is actively executing
3. **Section 4** (Risks) — from Step 4
4. **Section 5** (Patterns) — from Step 5
5. **Section 2** (What Matters Most) — filter Section 1 for signal
6. **Section 3** (Decision Points context) — stage-setting for Section 6
7. **Section 6** (Decisions Required) — from Step 3, fully formed with options and recommendation
8. **Section 8** (Watch List) — what to monitor next cycle

Cut every sentence that doesn't earn its place.

---

## Step 8: Write Document 3 — Field Agent Assessment

One entry per active agent. Use the structure from `REPORT_FORMATS.md`.  
Pull evidence from Step 6. Be specific. Vague assessments are useless.

---

## Step 9: Write Document 1 — Unified Executive Summary

Write this last. By now you know what matters most.

- Division status: GREEN (on track) / YELLOW (watch) / RED (action required)
- 3–5 sentences: the single most important thing happening and what it means
- Key numbers table from KPI log
- Top priority for Arbiter — one sentence, no ambiguity
- Agents at a glance table

---

## Step 10: Deliver

Save all three documents to `Pantheon/Theoria/Commander/`:
- `YYYY-MM-DD_ExecutiveSummary.md`
- `YYYY-MM-DD_StrategicReport.md`
- `YYYY-MM-DD_AgentAssessment.md`

Confirm delivery. Update `kpi_log/YYYY-MM-DD.json`. Log cycle completion in `~/.openclaw/workspace/athena/cycle_log.md`.

---

## Quality Check (Before Delivery)

- [ ] Every KPI in the summary is sourced from actual report data
- [ ] Every decision in Section 6 has a specific recommendation
- [ ] Every agent has an assessment entry
- [ ] Executive Summary can be consumed in under 2 minutes
- [ ] No sentence is present purely for length or tone
