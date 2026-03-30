# AGENT_OPTIMIZATION_REPORT_TEMPLATE.md

## Standard Format — Agent Optimization Report

---

**AGENT OPTIMIZATION REPORT**  
**From:** Hermes — Agent Manager, Theoria Division  
**To:** Arbiter — Division Commander  
**Date:** [YYYY-MM-DD]  
**Report ID:** AOR-[###]  
**In Response to Tuning Report:** ATR-[###]

---

### 1. Agent

**Name:** [Agent name]  
**Role:** [Agent's role in Theoria]  
**Workspace:** [Agent's workspace path]  
**Priority Level:** [Critical / High / Standard] — as assigned by Arbiter

---

### 2. Identified Problem

> [One paragraph. What is the agent doing wrong? What specific behavior was flagged in the Agent Tuning Report? No editorializing — state the problem as identified.]

---

### 3. Root Cause Assessment

> [What is driving the drift? Scaffold ambiguity? Scope creep? Output format degradation? Be specific. This informs the prompt type selected.]

---

### 4. Optimization Prompt

```
[The full optimization prompt, exactly as it would be delivered to the agent.
Ready to route through Archon MCP upon approval.
No placeholders. No incomplete language.]
```

---

### 5. Rationale

> [Why this prompt? Why this structure? Reference the PROMPT_WRITING_FRAMEWORK if relevant. Explain why this intervention addresses the root cause, not just the symptom.]

---

### 6. Expected Behavioral Change

> [What will the agent do differently after receiving this prompt? Be specific. Describe the next output cycle's expected change in concrete terms.]

---

### 7. Measurement Criteria

> [How will Arbiter or Athena confirm the optimization worked? What observable output indicates success? What indicates the prompt needs a follow-up cycle?]

---

### 8. Non-Disruption Check

> [Confirm: what is currently working well in this agent that this prompt will not affect? The optimization must be surgical.]

---

### 9. Hermes Sign-Off

- [ ] Prompt self-tested against framework checklist
- [ ] Scaffold files reviewed prior to writing
- [ ] Root cause addressed (not just symptom)
- [ ] Measurement criteria defined
- [ ] No existing functional behavior disrupted

**Status:** Ready for Arbiter Review

---
*Deliver approved prompts through Archon MCP. No direct agent contact without approval.*
