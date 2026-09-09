# Agile & Scrum for QA

*Status: Currently Learning*

Notes on how Agile/Scrum works and specifically where QA fits into it.

---

## 1. What is Agile?

Agile is a way of developing software in small, incremental steps rather than
one large release at the end. Software is built and tested in short cycles
called **sprints**, with continuous feedback from stakeholders.

**Core Agile values (from the Agile Manifesto):**
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a fixed plan

---

## 2. What is Scrum?

Scrum is the most widely used **framework** for implementing Agile. It
organizes work into fixed-length sprints (commonly 1–2 weeks) with defined
roles, events, and artifacts.

**Key Scrum roles:**

| Role | Responsibility |
|---|---|
| Product Owner | Owns the product backlog, defines priorities and requirements |
| Scrum Master | Facilitates the process, removes blockers for the team |
| Development Team (includes QA) | Builds and tests the product increment |

---

## 3. Scrum Ceremonies — and Where QA Fits In

| Ceremony | Purpose | QA's Role |
|---|---|---|
| **Sprint Planning** | Decide what work will be done in the upcoming sprint | Estimate testing effort; flag testability concerns in user stories early |
| **Daily Standup** | Quick daily sync: what was done, what's next, blockers | Report testing progress, defects found, and any blockers (e.g. environment issues) |
| **Sprint Review** | Demo completed work to stakeholders at the end of the sprint | Confirm what was actually tested and verified before it's demoed as "done" |
| **Sprint Retrospective** | Reflect on what went well and what to improve | Raise process issues (e.g. late requirement changes, insufficient test time) and suggest improvements |
| **Backlog Refinement** | Ongoing review/clarification of upcoming backlog items | Ask clarifying questions on requirements to ensure they are testable before they enter a sprint |

---

## 4. Key Agile/QA Concepts

**Definition of Ready (DoR):** Criteria a user story must meet before it can
be picked up in a sprint (e.g. clear acceptance criteria, no open questions).
QA input here prevents ambiguous requirements from entering development.

**Definition of Done (DoD):** Criteria that must be met before a story is
considered complete — usually includes "tested and defect-free," not just
"code written."

**Acceptance Criteria:** Specific, testable conditions a user story must
satisfy. QA test cases are typically derived directly from these.

**Shift-Left Testing:** Involving QA early in the sprint — during planning
and refinement — rather than only after development is finished, so issues
are caught sooner and cheaper to fix.

---

## 5. A Typical Sprint from a QA Perspective

```
Backlog Refinement → Sprint Planning → Daily Development + Testing (in parallel)
        ↓                                              ↓
  Clarify requirements                     Execute test cases as features
  Confirm testability                       become ready during the sprint
                                                       ↓
                                          Sprint Review (demo tested work)
                                                       ↓
                                          Sprint Retrospective (improve process)
```

Unlike a traditional Waterfall model where testing happens only after
development is complete, in Agile, **testing happens continuously throughout
the sprint** as each feature becomes ready.
