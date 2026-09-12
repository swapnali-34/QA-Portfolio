# Jira Fundamentals for QA

Deeper Jira notes beyond the basics — covering how QA actually works inside
Jira day-to-day: workflows, boards, priority/severity fields, linking
issues, and querying with JQL.

For Postman, see [05-Tools-Notes-Jira-Postman.md](./05-Tools-Notes-Jira-Postman.md).
For how sprints/backlogs map to Scrum concepts, see
[03-Agile-Scrum-for-QA.md](./03-Agile-Scrum-for-QA.md).

---

## 1. Issue Types

| Issue Type | Used For |
|---|---|
| **Epic** | A large body of work made up of multiple stories |
| **Story** | A feature or requirement from the user's perspective |
| **Task** | A general piece of work not tied to a specific feature |
| **Bug** | A defect found in the software |
| **Sub-task** | A smaller piece of work under a story, task, or bug |

---

## 2. Boards: Scrum vs Kanban

Jira offers two board types, matching the two Agile approaches:

| | Scrum Board | Kanban Board |
|---|---|---|
| Structure | Organized by sprint | Continuous columns, no sprints |
| Use case | Planned sprint work | Ongoing support/maintenance work |
| Typical columns | To Do → In Progress → In Review → Done | Same columns, but items flow continuously |

A team can run both — a Scrum board for planned feature work, and a Kanban
board for an incoming bug queue.

---

## 3. Typical Bug Workflow in Jira

```text
To Do → In Progress → In Review → Ready for QA → In Testing → Done
                                                       ↓
                                                  Reopened
```

(Exact workflow states are configurable per project — this is a common
default pattern.)

**What a QA Analyst does at each stage:**
- **Ready for QA** → pick up the ticket once development marks it ready
- **In Testing** → execute test cases, log sub-bugs if new issues appear
- **Done** → move here only once retesting confirms the fix
- **Reopened** → move back here if retesting shows the issue isn't resolved

---

## 4. Priority vs Severity in Jira

Jira tracks these as **separate fields**, matching the QA distinction
covered in
[07-Notes/01-Software-Testing-Fundamentals.md](./01-Software-Testing-Fundamentals.md):

| Field | Set By | Answers |
|---|---|---|
| **Severity** | QA/Tester | How badly does this break functionality? |
| **Priority** | Product Owner/Business | How urgently must this be fixed? |

**Example:** a typo on the homepage is low severity but can be set high
priority if it's client-facing and urgent to fix before a demo.

---

## 5. Key Fields on a Jira Ticket

| Field | Purpose |
|---|---|
| **Epic Link** | Connects a story/task to its parent Epic |
| **Sprint** | Which sprint this ticket is assigned to |
| **Story Points** | Estimated effort/complexity |
| **Labels** | Free-text tags for filtering (e.g. `regression`, `login-module`) |
| **Components** | Which part of the product this affects (e.g. `Checkout`, `API`) |
| **Fix Version** | Which release this is targeted to be fixed in |
| **Assignee / Reporter** | Who's working on it / who raised it |

---

## 6. Linking Issues

Jira lets you connect related tickets instead of leaving them isolated:

| Link Type | Meaning |
|---|---|
| **Blocks / Is blocked by** | This ticket can't proceed until the other is resolved |
| **Relates to** | Loosely connected, no hard dependency |
| **Duplicates / Is duplicated by** | Same underlying issue reported twice |
| **Causes / Is caused by** | One issue is the root cause of another |

**QA use case:** linking a bug as "blocked by" a missing test environment,
or "duplicates" an already-reported issue — keeps the backlog clean and
avoids duplicate investigation effort.

---

## 7. JQL (Jira Query Language) Basics

JQL lets you search and filter issues with structured queries instead of
manually scrolling through a board — a genuinely useful QA skill for
tracking your own testing work.

**Basic syntax:**

```text
field operator value
```

**Example queries:**

```text
project = "QA" AND status = "In Progress"
```
All tickets in the QA project currently in progress.

```text
assignee = currentUser() AND status != Done
```
All open tickets assigned to me.

```text
issuetype = Bug AND priority = High AND status != Closed
```
All unresolved high-priority bugs.

```text
created >= -7d
```
Everything created in the last 7 days.

```text
labels = "regression" AND fixVersion = "2.0"
```
All tickets labeled "regression" targeted for release 2.0.

**Why this matters for QA:** JQL lets you build a saved filter for "my open
bugs," "all bugs in this sprint," or "everything blocked" — much faster
than manually checking a board every day.

---

## 8. Filters & Dashboards

- **Filters** — a saved JQL query you can reuse and share with the team (e.g. "Open bugs assigned to me")
- **Dashboards** — a customizable view combining multiple filters/charts (e.g. bug count by priority, sprint burndown) for a quick team-wide status check

---

## Key Takeaway

Jira isn't just a place to log bugs — used well, it's how a QA Analyst
tracks their own workload (via JQL/filters), communicates status (via
fields and workflow states), and keeps related work connected (via issue
links) across a sprint.
