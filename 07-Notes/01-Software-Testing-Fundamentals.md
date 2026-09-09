# Software Testing Fundamentals

Core theory concepts that underpin all manual testing work in this portfolio.

---

## 1. SDLC (Software Development Life Cycle)

The SDLC is the process followed to build software, from idea to release and maintenance.

| Phase | Description |
|---|---|
| Requirement Analysis | Understand what the business/user needs |
| Design | Plan architecture, UI, and system design |
| Development | Write the actual code |
| Testing | Verify and validate the software against requirements |
| Deployment | Release the software to users |
| Maintenance | Fix issues, add improvements after release |

QA is involved from the **Requirement Analysis** phase onward, not just at the Testing stage — early involvement helps catch unclear or untestable requirements before development starts.

---

## 2. STLC (Software Testing Life Cycle)

The STLC is the process followed specifically for testing, and runs alongside the SDLC.

| Phase | Description |
|---|---|
| Requirement Analysis | Identify what is testable; raise queries on unclear requirements |
| Test Planning | Define scope, approach, resources, schedule, and tools |
| Test Case Design | Write test scenarios, test cases, and prepare test data |
| Environment Setup | Prepare the test environment and test data |
| Test Execution | Run test cases, log actual results, raise defects |
| Test Cycle Closure | Evaluate results, document lessons learned, close the cycle |

**Example:** Before testing a login page, a tester analyzes requirements (Requirement Analysis), decides which testing types to use — functional, negative, boundary (Test Planning) — writes specific test cases like "verify login with valid credentials" (Test Case Design), sets up a test environment with test accounts (Environment Setup), runs the test cases and logs a bug if login fails unexpectedly (Test Execution), and finally summarizes what passed, what failed, and what was learned (Test Cycle Closure).

---

## 3. Verification vs Validation

| | Verification | Validation |
|---|---|---|
| **Question answered** | Are we building the product right? | Are we building the right product? |
| **Type** | Static (no code execution) | Dynamic (code is executed) |
| **Activities** | Reviews, walkthroughs, inspections | Functional testing, system testing, UAT |
| **When** | Throughout development, before execution | After a build is available |
| **Example** | Reviewing a test case document against requirements | Actually running the test case on the application |

**Simple way to remember:** Verification checks the **documents and design**. Validation checks the **actual working software**.

---

## 4. Defect Life Cycle

A defect (bug) moves through a defined set of states from discovery to closure.

```
New → Assigned → Open → Fixed → Retest → Verified → Closed
                    ↓                        ↓
                Rejected                 Reopened
```

| State | Meaning |
|---|---|
| New | Defect logged for the first time |
| Assigned | Assigned to a developer to fix |
| Open | Developer starts working on it |
| Fixed | Developer has fixed the code |
| Retest | Tester re-executes the failed test case |
| Verified | Fix confirmed as working |
| Closed | Defect life cycle complete |
| Rejected | Not a valid defect (e.g. working as intended, or duplicate) |
| Reopened | Fix didn't work, or issue resurfaced |

**Example:** A tester logs a bug where the "Submit" button doesn't work (**New**). It's assigned to a developer (**Assigned**), who confirms and begins fixing it (**Open**). Once the code is updated (**Fixed**), the tester re-tests the same steps (**Retest**). If the button now works and no side effects appear, the tester marks it **Verified**, and it's eventually **Closed**. If it still fails, it goes back to **Reopened** instead.

---

## 5. Severity vs Priority

| | Severity | Priority |
|---|---|---|
| **Definition** | Impact of the defect on the application's functionality | Urgency of fixing the defect relative to business needs |
| **Decided by** | Tester (based on technical impact) | Product Manager / Business (based on business impact) |
| **Focus** | "How bad is it?" | "How soon must it be fixed?" |

**Examples:**

| Scenario | Severity | Priority | Why |
|---|---|---|---|
| App crashes on login | High | High | Major functional break, blocks all users |
| Typo in company name on homepage | Low | High | Cosmetically minor, but client-facing and urgent to fix |
| Crash in a rarely-used admin report (used once a year) | High | Low | Technically severe, but low business urgency |
| Misaligned button on an internal test page | Low | Low | Minor impact, no urgency |

**Key takeaway:** Severity and Priority are independent — a defect can be high severity but low priority, or low severity but high priority, depending on business context.
