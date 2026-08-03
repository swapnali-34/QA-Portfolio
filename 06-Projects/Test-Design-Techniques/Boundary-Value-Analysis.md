# Boundary Value Analysis (BVA)

## Username Field

### Requirement

The username length must be between **5 and 20 characters**.

---

## Objective

Identify and test values at and around the input boundaries.

---

## Boundary Values

Minimum Length = **5**

Maximum Length = **20**

---

## Boundary Test Cases

| Test Case ID | Username Length | Example Username | Expected Result |
|--------------|----------------:|------------------|-----------------|
| TC-BVA-001 | 4 | abcd | Rejected |
| TC-BVA-002 | 5 | admin | Accepted |
| TC-BVA-003 | 6 | admin1 | Accepted |
| TC-BVA-004 | 19 | testusername1234567 | Accepted |
| TC-BVA-005 | 20 | testusername12345678 | Accepted |
| TC-BVA-006 | 21 | testusername123456789 | Rejected |

---

## Summary

Minimum Boundary Tests

- 4
- 5
- 6

Maximum Boundary Tests

- 19
- 20
- 21

Total Test Cases: **6**

---

## Conclusion

Boundary Value Analysis helps identify defects that commonly occur at the minimum and maximum limits of an input field.
