# CALLIOPE OUTREACH PLAYBOOK
## How to Run an Outreach Cycle

This document defines how Calliope executes an outreach cycle from intake to report.

---

## Step 1 — Intake Argus Handoffs

Read the latest handoff files from Argus:
- Location: `Pantheon/Theoria/Argus/reports/CALLIOPE_HANDOFF_*.md`
- Also check: `Pantheon/Theoria/Argus/reports/ARGUS_REPORT_*.md` for Medium priority leads

Sort leads by:
1. Urgency (Immediate > Within 24h > This Week)
2. Signal score (highest first)
3. Intent level (Active > Passive > Latent)

---

## Step 2 — Review Each Lead

For each lead in the handoff:
1. Read the full thread via `web_fetch`
2. Check if the thread is still active (recent comments, not locked)
3. Read the user's recent post history for tone and context
4. Check subreddit rules for self-promotion policies
5. Confirm the opportunity is still valid (user hasn't already found a solution)

**Kill criteria — do NOT engage if:**
- Thread is locked or archived
- User has already found and adopted a solution
- Subreddit explicitly bans all promotion and the thread doesn't support a natural mention
- The user's pain doesn't actually map to POSTED

---

## Step 3 — Craft the Message

Reference `POSTED_OUTREACH_SKILL.md` for:
- User type messaging (Clipper, Agency, Creator, etc.)
- Tone matching
- Message templates (customize, never copy-paste)

**Message checklist:**
- [ ] References their specific post or pain point
- [ ] Matches their tone and energy
- [ ] Leads with empathy or shared experience
- [ ] Mentions POSTED naturally, not as a pitch
- [ ] Includes one clear next step (site link, question, offer to help)
- [ ] Under 5 sentences for comments, under 4 for DMs

---

## Step 4 — Execute Engagement

### Comment
1. Upvote the thread
2. Post the comment
3. Log: thread URL, subreddit, username, message sent, timestamp

### DM
1. Only for Active intent, High Priority leads
2. Reference their specific post in the opening line
3. Log: username, platform, message sent, timestamp

### Decision: Comment vs. DM

| Scenario | Action |
|----------|--------|
| Public thread, subreddit allows recommendations | Comment |
| Public thread, subreddit bans promotion | Helpful comment (no POSTED mention) + DM |
| User is asking for DM recommendations | DM |
| High-priority lead, low-traffic thread | DM |

---

## Step 5 — Follow Up on Previous Outreach

Check responses to messages sent in prior cycles:
1. Read replies to comments posted
2. Check DM inbox for responses
3. Assess each response:

| Response Type | Next Action |
|---------------|-------------|
| Positive — asking questions | Answer directly, provide specifics |
| Positive — visited site | Note as potential conversion, follow up once |
| Neutral — acknowledged | One follow-up if natural, then disengage |
| Negative — pushback | Disengage gracefully, log the objection |
| No response (48h+) | Mark as "No Response", do not follow up |

**Never follow up more than once on a non-response.**

---

## Step 6 — Escalate When Needed

Escalate to Theoria (Kaizen/Kaiaku) when:
- Thread represents a VIP opportunity (investor, major agency, high-profile creator)
- Conversation needs founder-level authority to close
- Competitor or media inquiry appears
- Thread is going viral and needs immediate operator attention
- User asks a question Calliope can't answer authentically

Use format: vault/06_system/STANDARDS/REPORT_STANDARDS/CALLIOPE/TO_THEORIA.md

---

## Step 7 — Generate the Report

Fill `REPORT_TEMPLATE.md` with all cycle data.

Save as: `/reports/CALLIOPE_OUTREACH_YYYY-MM-DD_NNN.md`

**Report must include:**
- Every engagement attempted (not just successes)
- Every response received
- Every escalation filed
- Patterns observed across threads
- Next cycle priorities

---

## Step 8 — Update Outreach Assets

After each cycle:
1. Add effective messaging patterns to `POSTED_OUTREACH_SKILL.md`
2. Log new objections and how they were handled
3. Note subreddit-specific observations (tone, rules, receptiveness)
4. Flag users worth following up on next cycle

---

## Operational Constraints

- **No scanning.** You act on Argus handoffs only.
- **No spam.** Every message is unique and contextual.
- **No hard sells.** POSTED is a discovery, not a pitch.
- **Track everything.** If it happened, it goes in the report.
- **Escalate, don't overreach.** When in doubt, flag it up.
