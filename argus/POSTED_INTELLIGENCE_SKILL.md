# POSTED INTELLIGENCE SKILL
## Signal Detection Framework for Argus

This document defines how Argus identifies, evaluates, and scores Reddit signals for POSTED relevance.

---

## SIGNAL CATEGORIES

### Category 1 — COMPETITOR PAIN (Highest Intent)

Users expressing frustration with Buffer, Hootsuite, Later, or other competitors.

**Why it matters:** These users are already in-market. They have the pain. They're looking for something better. POSTED is a direct answer.

**Detection signals:**
- Mentions Buffer, Hootsuite, Later, Sprout Social, SocialPilot by name + negative sentiment
- Words: "expensive," "limited," "frustrated," "leaving," "cancel," "alternative," "switching from"
- Questions like "what's better than Buffer for agencies?"
- Complaints about per-account pricing or subscription stacking

**Confidence boost factors:**
- Mentions managing multiple accounts specifically
- Mentions agency or client management context
- Upvoted thread with comments agreeing = validated widespread pain

---

### Category 2 — MULTI-ACCOUNT DEMAND (High Intent)

Users describing the exact problem POSTED solves: managing more than one account.

**Why it matters:** These users have the core pain point. They may not know POSTED exists. Calliope's job is to introduce it.

**Detection signals:**
- "manage multiple [platform] accounts"
- "multiple Instagram accounts," "10 TikTok accounts," "50 accounts"
- "post to all my accounts at once"
- "bulk scheduling across accounts"
- "one tool for all my clients"

**Confidence boost factors:**
- Specific number of accounts mentioned (higher = better fit)
- Agency or business context
- Actively asking for tool recommendations

---

### Category 3 — CLIPPER ECOSYSTEM (High Intent, Niche)

Users operating clip account businesses across multiple platforms.

**Why it matters:** Clippers are a core POSTED use case. They manage high account volume, often manually. POSTED gives them a massive operational advantage.

**Detection signals:**
- "clip accounts," "clip pages," "clipping multiple accounts"
- "managing 10/20/50 TikTok accounts"
- "repost across accounts"
- "how do clippers manage multiple accounts"
- Present in: r/TikTokMonetizing, r/passive_income, r/thesidehustle

**Confidence boost factors:**
- Mentions specific account count
- Expresses time/workflow pain around posting volume
- Asks about scheduling or automation tools

---

### Category 4 — AGENCY ECOSYSTEM (High Intent)

Social media agencies managing accounts for multiple clients.

**Why it matters:** Agencies are paying the most for the problem POSTED solves. One agency paying for 20 Buffer subscriptions is one POSTED customer.

**Detection signals:**
- "social media agency," "managing clients," "client accounts"
- "separate subscriptions for each client"
- "team collaboration," "approval workflow," "content approval"
- "white label," "client-facing dashboard"
- Present in: r/SocialMediaManagers, r/SocialMediaMarketing, r/DigitalMarketing

**Confidence boost factors:**
- Mentions number of clients
- Mentions team or employee context
- Mentions billing or cost frustration

---

### Category 5 — CREATOR ECOSYSTEM (Medium Intent)

Creators running multiple channels, brands, or personas.

**Why it matters:** Creators with multiple identities face the same multi-account pain, just at smaller scale than agencies.

**Detection signals:**
- "multiple YouTube channels," "multiple Instagram accounts"
- "running two brands," "multiple personas"
- "content for different niches simultaneously"
- "post same content to multiple accounts"

**Confidence boost factors:**
- Platform count mentioned (cross-platform = better fit)
- Scale signals (more channels = higher intent)

---

### Category 6 — GENERAL SCHEDULING PAIN (Lower Intent, Monitor)

Users frustrated with social media scheduling in general, without specific multi-account context.

**Why it matters:** Lower priority but worth watching — these users may have latent multi-account needs.

**Detection signals:**
- "social media scheduling tool" recommendations
- "best tool for posting content"
- "automate social media posting"

**Action:** Flag as Low Priority. Monitor for follow-up signals that indicate multi-account need.

---

## SCORING MATRIX

Score each thread by adding up signals:

| Signal | Points |
|--------|--------|
| Mentions competitor (Buffer, Hootsuite, etc.) by name | +2 |
| Negative sentiment toward competitor | +2 |
| Explicitly asks for alternative | +3 |
| Mentions managing multiple accounts | +3 |
| Mentions specific account count (5+) | +2 |
| Agency or client management context | +3 |
| Clipper context | +3 |
| Actively seeking tool recommendation | +2 |
| High engagement (50+ upvotes or 20+ comments) | +1 |
| Recent post (within 30 days) | +1 |
| User has posting history in relevant subreddits | +1 |

**Score interpretation:**
- 8+ → 🔴 High Priority
- 4–7 → 🟡 Medium Priority
- 1–3 → 🟢 Low Priority / Monitor
- 0 → No flag

---

## USER PROFILING GUIDE

For every flagged user, assess:

### Personality Type

| Type | Indicators | Calliope Approach |
|------|------------|-------------------|
| **Frustrated Operator** | Venting about existing tools, cost complaints | Lead with empathy, acknowledge the pain, then present solution |
| **Active Researcher** | Asking for recommendations, comparing options | Lead with specifics — features, pricing, advantages over their current tool |
| **Curious Explorer** | General questions, early stage | Educational tone, no hard sell |
| **Scale Builder** | Talking about growth, volume, adding accounts | Lead with scale capability — "built for this exact situation" |
| **Budget Conscious** | Mentions cost, subscription stacking | Lead with value prop — replace 10 subscriptions with 1 |

### Intent Level

| Level | Description |
|-------|-------------|
| **Active** | Asking for solutions right now. Highest priority. |
| **Passive** | Has the pain but not actively shopping. Medium priority. |
| **Latent** | Doesn't know they have the problem yet. Monitor. |

### Sensitivity Flags

- User is a moderator of the subreddit → approach carefully, don't risk ban
- Thread is explicitly "no self-promotion" → flag to Calliope, do not engage
- User has previously complained about being pitched → note and approach indirectly
- User appears to be a competitor employee → no flag

---

## FALSE POSITIVE FILTERS

Do NOT flag threads where:
- The user already has a solution they're happy with
- The user manages only 1 account (no multi-account pain)
- The post is older than 90 days AND has no recent comments
- The thread is clearly spam, a bot, or promotional
- The pain described is not something POSTED solves

---

## EVOLVING THIS SKILL

As Argus scans, update this file with:
- New signal patterns discovered
- False positive patterns to avoid
- Emerging vocabulary users use to describe the pain
- New user types or segments identified

This document is a living intelligence asset, not a static checklist.

---

*POSTED Intelligence Skill — Argus, Agent 1, Theoria Division*
