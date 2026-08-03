# Decision Table Testing

## Login Decision Table

### Requirement

A user can log in only if both the username and password are valid.

---

## Conditions

- Valid Username
- Invalid Username
- Valid Password
- Invalid Password

---

## Decision Table

| Conditions | Rule 1 | Rule 2 | Rule 3 | Rule 4 |
|------------|--------|--------|--------|--------|
| Username Valid | Yes | Yes | No | No |
| Password Valid | Yes | No | Yes | No |

| Actions | Rule 1 | Rule 2 | Rule 3 | Rule 4 |
|---------|--------|--------|--------|--------|
| Login Successful | Yes | No | No | No |
| Display Error Message | No | Yes | Yes | Yes |

---

## Test Cases Derived

| Test Case ID | Username | Password | Expected Result |
|--------------|----------|----------|-----------------|
| TC-DT-001 | Valid | Valid | Login Successful |
| TC-DT-002 | Valid | Invalid | Error Message |
| TC-DT-003 | Invalid | Valid | Error Message |
| TC-DT-004 | Invalid | Invalid | Error Message |

---

## Conclusion

Decision Table Testing ensures that every possible combination of input conditions is tested, reducing the risk of missing important business-rule scenarios.
