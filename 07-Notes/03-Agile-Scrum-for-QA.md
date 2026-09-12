# Agile & Scrum for QA

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

## 4. User Stories & Acceptance Criteria

A **user story** describes a feature from the end user's perspective, in a
standard format:

```text
As a [type of user]
I want [some goal]
So that [some reason/benefit]
```

**Example:**
```text
As a registered user
I want to reset my password via email
So that I can regain access to my account if I forget it
```

**Acceptance Criteria** are the specific, testable conditions a story must
satisfy to be considered done. QA test cases are usually derived directly
from these.

**Example acceptance criteria for the story above:**
- User can request a password reset from the login page
- A reset link is emailed to the registered address within 2 minutes
- The reset link expires after 24 hours
- An expired or reused link shows a clear error message

**INVEST criteria** — a good user story should be:

| Letter | Meaning |
|---|---|
| I | Independent — doesn't depend on other stories to be valuable |
| N | Negotiable — details can be discussed, not a rigid contract |
| V | Valuable — delivers real value to the user or business |
| E | Estimable — the team can reasonably estimate the effort |
| S | Small — fits within a single sprint |
| T | Testable — has clear, verifiable acceptance criteria |

The **"Testable"** criterion is where QA has the most direct input — if a
story's acceptance criteria are vague, that's a signal to raise it during
backlog refinement, before the story enters a sprint.

---

## 5. Estimation & Story Points

Teams estimate the relative effort/complexity of a story using **story
points** rather than hours — a way of comparing stories to each other
rather than predicting exact time.

Common scales: Fibonacci-like sequence (1, 2, 3, 5, 8, 13...) or T-shirt
sizes (XS, S, M, L, XL).

**Why not hours?** Story points account for effort, complexity, and
uncertainty together, and they stay comparable across different team
members with different work speeds.

**QA's role in estimation:** flag stories that look small in scope but
carry heavy testing effort (e.g. a small UI change that touches many
existing workflows and needs full regression) — the estimate should reflect
total effort, not just development time.

---

## 6. Velocity & Burndown Charts

**Velocity** — the average number of story points a team completes per
sprint. Used to forecast how much work fits in future sprints.

**Sprint Burndown Chart** — a chart tracking remaining work (story points or
hours) against time within a sprint. An ideal burndown trends steadily
toward zero by the sprint's end.

```text
Story Points
Remaining
    │╲
    │ ╲
    │  ╲___
    │      ╲___
    │          ╲___
    └──────────────╲──→ Time (days in sprint)
```

If the line flattens out or drops sharply near the end (rather than
trending steadily down), it can signal work being rushed through late in
the sprint — worth raising in the retrospective.

---

## 7. Scrum vs Kanban

| | Scrum | Kanban |
|---|---|---|
| Structure | Fixed-length sprints | Continuous flow, no fixed sprints |
| Planning | Sprint Planning at the start of each sprint | Work pulled continuously as capacity allows |
| Board reset | Board resets each sprint | Board is persistent, ongoing |
| Best suited for | Planned, predictable feature work | Support/maintenance work, unpredictable incoming tasks |
| QA impact | Testing planned within sprint capacity | Testing happens continuously as items move across the board |

Some teams use a hybrid ("Scrumban") — fixed sprints for planned feature
work, alongside a continuous Kanban-style lane for urgent bugs/support
tickets.

---

## 8. Key Agile/QA Concepts

**Definition of Ready (DoR):** Criteria a user story must meet before it can
be picked up in a sprint (e.g. clear acceptance criteria, no open questions).
QA input here prevents ambiguous requirements from entering development.

**Definition of Done (DoD):** Criteria that must be met before a story is
considered complete — usually includes "tested and defect-free," not just
"code written."

**Shift-Left Testing:** Involving QA early in the sprint — during planning
and refinement — rather than only after development is finished, so issues
are caught sooner and cheaper to fix.

---

## 9. A Typical Sprint from a QA Perspective

```text
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

---

## Related Notes

Jira is the tool most commonly used to run Scrum in practice — sprints,
backlogs, and boards described above map directly onto Jira's features. See
[07-Jira-Fundamentals-for-QA.md](./07-Jira-Fundamentals-for-QA.md) for how
these concepts look in Jira specifically.
