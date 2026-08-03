# Test Data

## Project Information

| Field | Details |
|--------|---------|
| Project | OrangeHRM Login Testing |
| Module | Login |
| Application | OrangeHRM Demo |
| Testing Type | Manual Testing |

---

# Purpose

This document contains the test data used during the execution of manual test cases for the OrangeHRM Login module.

The data covers:

- Positive testing
- Negative testing
- Validation testing
- Boundary testing
- Exploratory testing

---

# Valid Test Data

| Test Data ID | Username | Password | Purpose |
|--------------|----------|----------|---------|
| TD-001 | Admin | admin123 | Valid login credentials |

---

# Invalid Test Data

| Test Data ID | Username | Password | Purpose |
|--------------|----------|----------|---------|
| TD-002 | Admin | WrongPassword | Invalid password |
| TD-003 | WrongUser | admin123 | Invalid username |
| TD-004 | WrongUser | WrongPassword | Invalid username and password |

---

# Empty Field Test Data

| Test Data ID | Username | Password | Purpose |
|--------------|----------|----------|---------|
| TD-005 | *(Blank)* | admin123 | Username validation |
| TD-006 | Admin | *(Blank)* | Password validation |
| TD-007 | *(Blank)* | *(Blank)* | Required field validation |

---

# Boundary Test Data

| Test Data ID | Username | Password | Purpose |
|--------------|----------|----------|---------|
| TD-008 | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | admin123 | Long username input |
| TD-009 | Admin | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | Long password input |

---

# Special Character Test Data

| Test Data ID | Username | Password | Purpose |
|--------------|----------|----------|---------|
| TD-010 | @#$%^&* | admin123 | Special characters in username |
| TD-011 | Admin | @#$%^&* | Special characters in password |

---

# Exploratory Test Data

| Test Data ID | Scenario | Description |
|--------------|----------|-------------|
| TD-012 | Copy & Paste | Copy and paste username/password into input fields |
| TD-013 | Enter Key | Press Enter instead of clicking the Login button |
| TD-014 | Browser Refresh | Refresh the browser after successful login |
| TD-015 | Multiple Tabs | Open multiple browser tabs after login |
| TD-016 | Browser Back | Click the browser Back button after logout |

---

# Browser Information

| Browser | Version |
|----------|---------|
| Google Chrome | Latest |

---

# Operating System

| Operating System | Version |
|------------------|---------|
| Windows | 11 |

---

# Test Environment

| Item | Details |
|------|---------|
| Application URL | https://opensource-demo.orangehrmlive.com/ |
| Internet Connection | Stable |
| Testing Method | Manual Testing |

---

# Notes

- The valid credentials were obtained from the official OrangeHRM Demo website.
- Invalid, boundary, and special-character data were created specifically for testing purposes.
- This test data was used while executing the test cases documented in this project.
