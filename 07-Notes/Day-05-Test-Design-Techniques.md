# Day 5 - Test Design Techniques

---

# 1. What are Test Design Techniques?

## Definition

**Test Design Techniques** are structured methods used to create effective test cases with fewer test scenarios while achieving maximum test coverage.

Instead of testing every possible input, these techniques help testers identify the most important test cases.

---

## Benefits

- Reduces the number of test cases
- Improves test coverage
- Saves testing time
- Identifies defects efficiently
- Ensures systematic testing

---

# 2. Equivalence Partitioning (EP)

## Definition

**Equivalence Partitioning (EP)** divides input data into groups (partitions) where all values are expected to behave similarly.

Only one representative value from each partition needs to be tested.

---

## Example

**Age Field**

Allowed Age: **18–60**

### Partitions

| Partition | Test Data | Expected Result |
|------------|-----------|-----------------|
| Valid | 25 | Accepted |
| Invalid (<18) | 15 | Rejected |
| Invalid (>60) | 65 | Rejected |

---

## Key Points

- Divide inputs into valid and invalid groups.
- Test one value from each group.
- Reduces unnecessary testing.

---

# 3. Boundary Value Analysis (BVA)

## Definition

**Boundary Value Analysis (BVA)** focuses on testing values at the edges (boundaries) of input ranges because defects are most likely to occur there.

---

## Example

Allowed Age: **18–60**

| Test Value | Expected Result |
|------------|-----------------|
| 17 | Rejected |
| 18 | Accepted |
| 19 | Accepted |
| 59 | Accepted |
| 60 | Accepted |
| 61 | Rejected |

---

## Key Points

- Test minimum boundary.
- Test maximum boundary.
- Test values just below and just above the boundaries.

---

# 4. Decision Table Testing

## Definition

**Decision Table Testing** is used when the application's behavior depends on multiple conditions.

It helps ensure every possible combination of conditions is tested.

---

## Example

### Login Example

| Username | Password | Expected Result |
|-----------|-----------|-----------------|
| Valid | Valid | Login Successful |
| Valid | Invalid | Error Message |
| Invalid | Valid | Error Message |
| Invalid | Invalid | Error Message |

---

## Key Points

- Best for business rules.
- Covers multiple condition combinations.
- Improves test completeness.

---

# 5. State Transition Testing

## Definition

**State Transition Testing** verifies how an application behaves when moving from one state to another based on user actions or events.

---

## Example

### Login Attempts

```text
Logged Out
     │
     ▼
Login Attempt
     │
     ├── Correct Password → Logged In
     │
     └── Wrong Password
              │
              ▼
       Failed Attempt
              │
              ▼
     Account Locked (after multiple failed attempts)
```

---

## Common Uses

- Login systems
- ATM machines
- Online banking
- Shopping carts
- Password reset functionality

---

# 6. Applying Test Design Techniques

| Technique | Best Used For |
|-----------|---------------|
| Equivalence Partitioning | Input fields with large ranges of values |
| Boundary Value Analysis | Numeric fields and range validations |
| Decision Table Testing | Business rules with multiple conditions |
| State Transition Testing | Applications with different states and workflows |

---

# Real-World Examples

| Feature | Technique |
|----------|-----------|
| Age Validation | EP + BVA |
| Password Length | EP + BVA |
| Login Validation | Decision Table |
| Account Lock after Failed Attempts | State Transition |
| Shopping Cart Discounts | Decision Table |
| Order Status Workflow | State Transition |

---
