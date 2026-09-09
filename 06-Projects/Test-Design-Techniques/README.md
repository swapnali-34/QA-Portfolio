# Test Design Techniques

## Project Overview

This project demonstrates the practical application of common **Black Box Test Design Techniques** used in Manual Software Testing.

The exercises included in this project are based on real-world scenarios and showcase how different testing techniques help create effective and efficient test cases.

This project is part of my **QA Portfolio** and highlights my understanding of fundamental software testing concepts.

> For the underlying theory behind each technique, see
> [`07-Notes/02-Test-Design-Techniques-Theory.md`](../../07-Notes/02-Test-Design-Techniques-Theory.md).
> This project applies those concepts to real scenarios below.

---

## Project Objectives

The objectives of this project are to:

- Understand different Black Box Testing techniques.
- Design effective test cases using industry-standard methods.
- Improve test coverage while reducing redundant test cases.
- Practice solving real-world testing problems.

---

## Techniques Covered

| Technique | Description |
|-----------|-------------|
| Equivalence Partitioning (EP) | Divides input data into valid and invalid partitions to reduce the number of test cases. |
| Boundary Value Analysis (BVA) | Focuses on testing values at the minimum and maximum boundaries where defects commonly occur. |
| Decision Table Testing | Tests different combinations of input conditions and business rules. |
| State Transition Testing | Verifies application behavior as it moves between different states based on user actions or events. |

---

## Project Structure

```text
Test-Design-Techniques/
│
├── README.md
├── Equivalence-Partitioning.md
├── Boundary-Value-Analysis.md
├── Decision-Table.md
└── State-Transition.md
```

---

## Practical Exercises

### Exercise 1 – Equivalence Partitioning

📄 [Equivalence-Partitioning.md](./Equivalence-Partitioning.md)

**Scenario:** Age Validation

- Valid Age: **18–60**
- Created valid and invalid equivalence partitions.
- Selected representative test data from each partition.
- **3 test cases** derived (1 valid partition, 2 invalid partitions).

---

### Exercise 2 – Boundary Value Analysis

📄 [Boundary-Value-Analysis.md](./Boundary-Value-Analysis.md)

**Scenario:** Username Validation

- Username length: **5–20 characters**
- Created test cases for:
  - Minimum − 1
  - Minimum
  - Minimum + 1
  - Maximum − 1
  - Maximum
  - Maximum + 1
- **6 test cases** derived.

---

### Exercise 3 – Decision Table Testing

📄 [Decision-Table.md](./Decision-Table.md)

**Scenario:** Login Functionality

Conditions tested:

- Valid Username
- Invalid Username
- Valid Password
- Invalid Password

Created a complete Decision Table and derived test cases from each rule.
**4 test cases** derived (one per rule).

---

### Exercise 4 – State Transition Testing

📄 [State-Transition.md](./State-Transition.md)

**Scenario:** ATM PIN Validation

States covered:

- PIN Entry
- Incorrect PIN Attempts
- Account Locked
- Correct PIN after Account Lock

Created a State Transition Table and State Transition Diagram.
**4 test cases** derived.

---

## Test Case Summary

| Technique | Test Cases |
|---|---:|
| Equivalence Partitioning | 3 |
| Boundary Value Analysis | 6 |
| Decision Table Testing | 4 |
| State Transition Testing | 4 |
| **Total** | **17** |

---

## Learning Outcomes

After completing this project, I learned how to:

- Apply Equivalence Partitioning to reduce the number of test cases.
- Design Boundary Value Analysis test cases for input validation.
- Create Decision Tables for business logic validation.
- Model application behavior using State Transition Testing.
- Improve test coverage using structured test design techniques.

---

## Skills Demonstrated

- Manual Testing
- Black Box Testing
- Test Case Design
- Test Design Techniques
- Requirement Analysis
- Software Quality Assurance
- QA Documentation
- Markdown Documentation

---

## Author

**Swapnali Shitole**

Aspiring QA Engineer

GitHub Portfolio: **QA-Portfolio**

---

## Conclusion

This project demonstrates my practical understanding of the most widely used Black Box Test Design Techniques in Manual Testing. The exercises are designed to reflect real-world testing scenarios and showcase my ability to design structured, efficient, and comprehensive test cases.
