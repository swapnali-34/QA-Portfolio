# Day 1 - Software Testing Basics

---

# 1. What is Software Testing?

## Definition

**Software Testing** is the process of verifying and validating a software application to ensure it works as expected and is free from defects.

The primary goal of software testing is to identify bugs before the software is released to end users.

---

# 2. Objectives of Software Testing

The main objectives of software testing are:

- Find defects or bugs.
- Ensure the software meets business requirements.
- Improve software quality.
- Increase customer satisfaction.
- Reduce the cost of fixing defects after release.

---

## Example

### Scenario

A user attempts to log in using an incorrect password.

### Expected Result

The application should display an error message and prevent the user from logging in.

### Actual Result

The application allows the user to log in even with an incorrect password.

**Conclusion:** This is a software defect (bug).

---

# 3. SDLC (Software Development Life Cycle)

## Definition

The **Software Development Life Cycle (SDLC)** is a structured process used to develop high-quality software through different phases.

### SDLC Phases

```text
Requirements
      ↓
Planning
      ↓
Design
      ↓
Development
      ↓
Testing
      ↓
Deployment
      ↓
Maintenance
```

### Phase Description

| Phase | Description |
|--------|-------------|
| Requirements | Gather and analyze business requirements. |
| Planning | Estimate cost, resources, and project timeline. |
| Design | Create system architecture and application design. |
| Development | Write the application code. |
| Testing | Verify that the application meets the requirements and is free from defects. |
| Deployment | Release the application to users. |
| Maintenance | Fix defects, improve performance, and add new features after release. |

---

# 4. STLC (Software Testing Life Cycle)

## Definition

The **Software Testing Life Cycle (STLC)** is a systematic process followed by QA teams to ensure software quality through planned testing activities.

### STLC Phases

```text
Requirement Analysis
          ↓
Test Planning
          ↓
Test Case Development
          ↓
Environment Setup
          ↓
Test Execution
          ↓
Defect Reporting
          ↓
Test Closure
```

### Phase Description

| Phase | Description |
|--------|-------------|
| Requirement Analysis | Study and understand the project requirements. |
| Test Planning | Define the testing strategy, scope, schedule, and resources. |
| Test Case Development | Create test scenarios and detailed test cases. |
| Environment Setup | Prepare the hardware, software, and test data needed for testing. |
| Test Execution | Execute test cases and record the results. |
| Defect Reporting | Log and track any defects found during testing. |
| Test Closure | Evaluate the testing process and prepare the final report. |

---

# 5. What is a Defect (Bug)?

## Definition

A **Defect** (also called a **Bug**) is a flaw or error in software that causes the application to behave differently from the expected result.

---

## Example

### Expected Result

Entering the correct username and password should log the user into the application.

### Actual Result

The application displays an error message even though the credentials are correct.

**Conclusion:** This is a software defect (bug).

---

# 6. Bug Life Cycle

A bug passes through several stages from the time it is reported until it is resolved.

```text
New
 ↓
Assigned
 ↓
Open
 ↓
Fixed
 ↓
Retest
 ↓
Closed
```

### Bug Status Description

| Status | Description |
|--------|-------------|
| New | Tester reports a new defect. |
| Assigned | The defect is assigned to a developer. |
| Open | The developer begins investigating and fixing the defect. |
| Fixed | The developer resolves the issue. |
| Retest | The tester verifies that the fix works correctly. |
| Closed | The tester confirms the defect is fixed and closes it. |

---

# 7. Verification vs Validation

## Definitions

- **Verification** checks whether the software is being built correctly according to specifications.
- **Validation** checks whether the right software has been built to meet user needs.

---

## Comparison

| Verification | Validation |
|--------------|------------|
| Checks whether the product is built correctly. | Checks whether the right product is built. |
| Process-oriented. | Product-oriented. |
| Performed before execution. | Performed after execution. |
| Does not require code execution. | Requires executing the software. |
| Includes reviews, inspections, and walkthroughs. | Includes functional, integration, system, and user acceptance testing. |

---
