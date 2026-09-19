# Java Basics for Automation

The minimum Java needed to start writing Selenium test scripts — not a full
language course, just what shows up constantly in automation code.

---

## 1. Variables & Data Types

```java
int age = 28;
double price = 499.99;
boolean isLoggedIn = true;
String username = "swapnali_qa";
```

Selenium code uses `String` constantly (for locators, text, URLs) and
`boolean` for checks like `isDisplayed()`.

---

## 2. Operators & Conditionals

```java
if (isLoggedIn) {
    System.out.println("User is logged in");
} else {
    System.out.println("Login failed");
}
```

Used to branch test logic — e.g. "if an error message is displayed, fail
the test."

---

## 3. Loops

```java
for (int i = 0; i < 5; i++) {
    System.out.println("Attempt " + i);
}
```

Common in automation for retrying an action, or looping through a list of
elements (e.g. checking every row in a table).

---

## 4. Methods

```java
public boolean isValidEmail(String email) {
    return email.contains("@");
}
```

Every reusable action in a Page Object (click a button, enter text) is
written as a method — this is the core building block of test automation
code.

---

## 5. Classes & Objects (Basic OOP)

```java
public class LoginPage {
    // fields (locators) go here

    public void enterUsername(String username) {
        // action goes here
    }
}
```

```java
LoginPage loginPage = new LoginPage();
loginPage.enterUsername("Admin");
```

A **class** is a blueprint (e.g. `LoginPage`); an **object** is a specific
instance created from it (`loginPage`). This is the foundation of the Page
Object Model — see
[04-Page-Object-Model.md](./04-Page-Object-Model.md).

---

## 6. Constructors

```java
public class LoginPage {
    WebDriver driver;

    public LoginPage(WebDriver driver) {
        this.driver = driver;
    }
}
```

A constructor runs when an object is created — in Selenium, this is how a
Page Object receives the active `WebDriver` instance to work with.

---

## 7. Arrays & Lists

```java
List<WebElement> rows = driver.findElements(By.tagName("tr"));

for (WebElement row : rows) {
    System.out.println(row.getText());
}
```

`findElements()` (plural) returns a `List<WebElement>` — used whenever you
need to work with multiple matching elements, like every row in a table or
every product on a page.

---

## Quick Reference

| Concept | Where it shows up in Selenium |
|---|---|
| `String` | Locators, input text, URLs |
| `boolean` | `isDisplayed()`, `isEnabled()`, `isSelected()` |
| `if/else` | Branching test logic based on element state |
| Loops | Retrying actions, iterating over multiple elements |
| Methods | Every reusable Page Object action |
| Classes/Objects | Page Object Model structure |
| Constructors | Passing `WebDriver` into a Page Object |
| `List<WebElement>` | Result of `findElements()` |

---

## Next Step

See [02-Selenium-Fundamentals.md](./02-Selenium-Fundamentals.md) to put
this Java into an actual browser automation script.
