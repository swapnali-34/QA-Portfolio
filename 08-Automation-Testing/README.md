# Automation Testing (Java + Selenium)

*Status: First automation project complete — 4 test cases automated and passing with execution screenshots.*

Building on the manual testing foundation elsewhere in this portfolio, this
section covers automating web applications using Java, Selenium WebDriver,
and TestNG.

---

## 🛠️ Tools Used

Java · Selenium WebDriver · TestNG · Maven · WebDriverManager

---

## 📄 Documentation

| File | Contents |
|---|---|
| [01-Java-Basics-for-Automation.md](./01-Java-Basics-for-Automation.md) | The minimum Java needed for Selenium: variables, methods, OOP, lists |
| [02-Selenium-Fundamentals.md](./02-Selenium-Fundamentals.md) | Locators, actions, waits, and a first working script |
| [03-TestNG-Basics.md](./03-TestNG-Basics.md) | Annotations, assertions, execution order, grouping |
| [04-Page-Object-Model.md](./04-Page-Object-Model.md) | Structuring automation code the way real frameworks do |

---

## 🧪 Applied Project

➡️ [`05-OrangeHRM-Automation-Project`](./05-OrangeHRM-Automation-Project) —
automating login test cases already documented manually in
[`06-Projects/OrangeHRM-Login-Testing`](../06-Projects/OrangeHRM-Login-Testing),
using the Page Object Model.

**Result:** 4 test cases (valid login, invalid password, empty username,
empty password) run and pass end to end via `mvn test`, each with a
captured execution screenshot as evidence.

**Why this application:** rather than starting a new project from scratch,
this automates test cases I already designed and executed manually —
showing the same testing logic carried through to code.

---

## 📈 Learning Progress

**Completed:** Java fundamentals for automation, Selenium locators/actions/waits, TestNG annotations and assertions, Page Object Model structure, a working automation project with 4 passing tests and execution screenshots, programmatic screenshot capture, and diagnosing/fixing a real timing issue (waiting for the dashboard to render rather than checking the URL immediately).

**In Progress:** Automating the remaining OrangeHRM login test cases (password masking, lockout, security input).

**Next Goals:** TestNG HTML reporting, cross-browser execution, CI/CD basics (GitHub Actions/Jenkins).

---

## 🎯 Objective

To demonstrate the ability to translate manual test design into automated
test scripts using an industry-standard structure (Page Object Model +
TestNG), rather than one-off scripts — the same core skill this entire
portfolio is built around, applied to code instead of manual execution.
