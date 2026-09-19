# Equivalence Partitioning (EP)

*Part of [Test-Design-Techniques](./README.md) — theory: [07-Notes/02-Test-Design-Techniques-Theory.md](../../07-Notes/02-Test-Design-Techniques-Theory.md)*

## Age Field

### Requirement

The application accepts an age between **18 and 60** (inclusive).

---

## Objective

Use Equivalence Partitioning to identify valid and invalid input groups and create representative test cases.

---

## Equivalence Partitions

| Partition ID | Input Range | Type |
|--------------|------------|------|
| EP-001 | Less than 18 | Invalid |
| EP-002 | 18 to 60 | Valid |
| EP-003 | Greater than 60 | Invalid |

---

## Test Data

| Test Case ID | Test Data | Partition | Expected Result |
|--------------|-----------|-----------|-----------------|
| TC-EP-001 | 15 | EP-001 | Rejected |
| TC-EP-002 | 30 | EP-002 | Accepted |
| TC-EP-003 | 65 | EP-003 | Rejected |

---

## Summary

- Total Partitions: **3**
- Valid Partitions: **1**
- Invalid Partitions: **2**
- Total Test Cases: **3**

---

## Conclusion

Equivalence Partitioning reduces the number of test cases by selecting one representative value from each valid and invalid partition while maintaining good test coverage.

---

## Where This Applies Elsewhere in This Portfolio

Also used in [01-Manual-Testing/02-Registration-Form-Testing.md](../../01-Manual-Testing/02-Registration-Form-Testing.md), where field-level validation (email format, password length) draws on the same valid/invalid partition logic shown here.
