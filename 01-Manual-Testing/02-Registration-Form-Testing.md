# Registration Form Testing

A standalone manual testing exercise covering a generic registration/signup
form, focused on field-level validation rules.

---

## Feature Under Test

A typical registration form with fields: Full Name, Email, Password,
Confirm Password, and a "Register" button.

---

## Test Scenarios

| Scenario ID | Scenario |
|---|---|
| TS-01 | Verify registration with all valid details |
| TS-02 | Verify registration with an already-registered email |
| TS-03 | Verify registration with an invalid email format |
| TS-04 | Verify registration with a weak password |
| TS-05 | Verify registration when Password and Confirm Password don't match |
| TS-06 | Verify registration with the Full Name field left empty |
| TS-07 | Verify registration with the Email field left empty |
| TS-08 | Verify registration with special characters in the Full Name field |
| TS-09 | Verify registration with a name exceeding the maximum allowed length |
| TS-10 | Verify password masking on both Password and Confirm Password fields |
| TS-11 | Verify successful registration redirects to the correct next screen |
| TS-12 | Verify a confirmation email/message is triggered after successful registration |

---

## Test Cases

| Test Case ID | Title | Steps | Test Data | Expected Result |
|---|---|---|---|---|
| TC-01 | Valid registration | 1. Fill all fields with valid data 2. Click Register | Name: Test User, Email: test.user@example.com, Password: Valid@123, Confirm: Valid@123 | Account is created successfully; user is redirected appropriately |
| TC-02 | Duplicate email | 1. Enter an email already registered in the system 2. Fill remaining valid fields 3. Click Register | Email: existing@example.com | Error message: "This email is already registered" |
| TC-03 | Invalid email format | 1. Enter an improperly formatted email 2. Fill remaining valid fields 3. Click Register | Email: test.user@@example | Validation error: "Enter a valid email address" |
| TC-04 | Weak password | 1. Enter a password that doesn't meet complexity rules 2. Click Register | Password: 1234 | Validation error describing password requirements (e.g. minimum length, must include a number/symbol) |
| TC-05 | Password mismatch | 1. Enter a valid password 2. Enter a different value in Confirm Password 3. Click Register | Password: Valid@123, Confirm: Valid@124 | Validation error: "Passwords do not match" |
| TC-06 | Empty required field | 1. Leave Full Name blank 2. Fill remaining fields 3. Click Register | Name: (blank) | Validation error: "Full Name is required" |
| TC-07 | Special characters in name | 1. Enter a name containing symbols/numbers 2. Fill remaining valid fields 3. Click Register | Name: Test123!@# | Behavior should match the field's defined rule — either rejected with a clear message, or accepted per policy |
| TC-08 | Name exceeds max length | 1. Enter a name longer than the allowed character limit 2. Fill remaining valid fields 3. Click Register | Name: (200+ characters) | Input is truncated at the limit, or a validation error is shown — not silently accepted beyond the defined limit |
| TC-09 | Password masking | 1. Type into Password and Confirm Password fields | Password: Test@123 | Both fields mask input as dots/asterisks |

---

## Validation Rules Focus

This exercise emphasizes **field-level validation testing**, since
registration forms typically enforce multiple, independent rules per field.
Each rule (format, length, uniqueness, matching) is tested as its own
scenario rather than assuming one passing test covers the whole form.

---

## Key Learning

Registration forms benefit heavily from **Equivalence Partitioning and
Boundary Value Analysis** (see
[`06-Projects/Test-Design-Techniques`](../06-Projects/Test-Design-Techniques))
— each field (email format, password length, name length) has its own valid
and invalid partitions that need independent coverage.
