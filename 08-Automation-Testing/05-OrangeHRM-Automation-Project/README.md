# OrangeHRM Login Automation

*Status: 4 test cases automated and passing, with execution screenshots.*

Automates the login test cases already documented manually in
[`06-Projects/OrangeHRM-Login-Testing`](../../06-Projects/OrangeHRM-Login-Testing),
using Java, Selenium WebDriver, TestNG, and the Page Object Model.

---

## Project Structure

```text
05-OrangeHRM-Automation-Project/
│
├── README.md
├── pom.xml
├── src/
│   ├── main/java/pages/LoginPage.java
│   └── test/java/tests/LoginTest.java
└── screenshots/
    ├── TC005_Dashboard_Success.png
    ├── TC006_InvalidPassword_Alert.png
    ├── TC008_EmptyUsername_Validation.png
    └── TC009_EmptyPassword_Validation.png
```

---

## Test Cases Automated

TC IDs below match
[Login-Test-Cases.md](../../06-Projects/OrangeHRM-Login-Testing/03-Test-Cases/Login-Test-Cases.md)
exactly.

| TC ID | Scenario | Automated? |
|---|---|---|
| TC-005 | Valid login redirects to dashboard | ✅ Passing |
| TC-006 | Invalid password shows an error | ✅ Passing |
| TC-008 | Empty username shows validation | ✅ Passing |
| TC-009 | Empty password shows validation | ✅ Passing |
| TC-010 | Both username and password empty | ⏳ Planned |
| TC-011 | Password masking | ⏳ Planned |
| TC-012 | Logout | ⏳ Planned |
| TC-018 | Special characters in username rejected safely | ⏳ Planned |

Full manual test case list:
[06-Projects/OrangeHRM-Login-Testing/03-Test-Cases](../../06-Projects/OrangeHRM-Login-Testing/03-Test-Cases).

---

## Execution Screenshots

<p>
  <img src="./screenshots/TC005_Dashboard_Success.png" alt="TC-005 Valid login, dashboard loaded" width="280">
  <img src="./screenshots/TC006_InvalidPassword_Alert.png" alt="TC-006 Invalid credentials alert" width="280">
</p>
<p>
  <img src="./screenshots/TC008_EmptyUsername_Validation.png" alt="TC-008 Empty username validation" width="280">
  <img src="./screenshots/TC009_EmptyPassword_Validation.png" alt="TC-009 Empty password validation" width="280">
</p>

---

## How to Run

1. Install Java (JDK 11+) and Maven.
2. Clone this repo and navigate to this folder.
3. Run: `mvn test`
4. Chrome will open automatically (via WebDriverManager) and execute each test.
5. Screenshots are saved automatically to `screenshots/` after each test.

> **Note:** Locators in `LoginPage.java` were written against the OrangeHRM
> demo site's structure at the time of writing. If a test fails
> unexpectedly, inspect the live page first — the demo site's HTML can
> change between updates.

---

## What This Demonstrates

- Translating existing manual test cases into automated scripts
- Page Object Model structure (locators/actions separated from test logic)
- TestNG annotations, assertions, and test prioritization
- Explicit waits for reliable element interaction — including fixing a
  timing issue by waiting for the URL *and* the dashboard header to render,
  rather than checking immediately after clicking Login
- Programmatic screenshot capture on test execution (`TakesScreenshot`)

---

## Next Steps

- Add TC-010 (both fields empty), TC-011 (password masking), TC-012 (logout), and TC-018 (special characters in username)
- Generate and add a TestNG HTML execution report
- Move hardcoded test data into a separate test data file
- Add a GitHub Actions workflow to run tests automatically on push
