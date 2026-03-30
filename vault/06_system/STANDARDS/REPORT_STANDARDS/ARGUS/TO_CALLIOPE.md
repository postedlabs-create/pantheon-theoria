# ARGUS → CALLIOPE: Intelligence Handoff Format

*Authoritative version. This is the single source of truth for the Argus-to-Calliope handoff format.*

---

## When to Generate a Handoff

Generate a `CALLIOPE_HANDOFF_YYYY-MM-DD_NNN.md` file when:
- One or more 🔴 High Priority threads are identified
- A user is actively seeking a solution right now (Active intent)
- A competitor complaint thread is recent (within 7 days) and gaining traction
- A thread has unusually high engagement signaling broad market pain

Do NOT generate for Medium or Low priority threads alone — include those in the standard daily report.

---

## File Naming

`/reports/CALLIOPE_HANDOFF_YYYY-MM-DD_NNN.md`

---

## Format

```
# CALLIOPE HANDOFF
From: Argus
To: Calliope
Date: YYYY-MM-DD
Handoff ID: CALLIOPE_HANDOFF_YYYY-MM-DD_NNN
Urgency: [Immediate / Within 24h / This Week]
Flags in this handoff: [#]

---

## PRIORITY QUEUE
(Sorted by urgency. Act in this order.)

| # | User | Thread | Subreddit | Urgency | Score |
|---|------|--------|-----------|---------|-------|

---

## DETAILED BRIEFS

### BRIEF [N] — [User handle]

Thread: [Title]
URL: [URL]
Subreddit: r/[name]
Post Date: [Date]
Engagement: [Upvotes] upvotes · [#] comments
Argus Signal Score: [#]/10

---

THE SITUATION
[2–3 sentences. What is happening? What pain is being expressed?]

KEY QUOTE
> "[Most relevant quote]"

---

WHO THIS PERSON IS

| Dimension | Assessment |
|-----------|------------|
| Personality | |
| Tone | |
| Mindset | |
| Emotional State | |
| Intent Level | Active / Passive / Latent |
| User Type | Clipper / Agency / Creator / Business / Power User |

Background signals:
[Context from post history, comment style, community standing]

---

THE OPPORTUNITY

| POSTED Value Prop | How It Maps to Their Pain |
|-------------------|--------------------------|

Why POSTED wins here:
[1–2 sentences]

---

ENGAGEMENT PLAYBOOK FOR CALLIOPE

Recommended tone: [Peer / Helpful Expert / Fellow Operator / Empathetic / Enthusiastic]

How to open:
[Specific suggested opening — reference their exact pain]

Key points to hit:
- [Point 1]
- [Point 2]
- [Point 3 if relevant]

What NOT to do:
- [Pitfall or sensitivity]
- [Community rules or context]

Escalation recommendation:
[Should this be pushed to Theoria for Kaizen or Kaiaku to personally respond? Yes/No and why]

---

## CONTEXT NOTES FOR CALLIOPE
[Cross-thread observations — recurring objections, competitor presence, community tone]

## ARGUS NOTES
[Internal observations for system awareness — not directly actionable by Calliope]

---
Handoff prepared by Argus — Theoria Division
Calliope is responsible for all engagement decisions and escalations to Theoria
```

---

*Last updated: 2026-03-30 | Authoritative source: vault/06_system/STANDARDS/REPORT_STANDARDS/ARGUS/TO_CALLIOPE.md*
