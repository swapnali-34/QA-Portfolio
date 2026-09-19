# Selenium Fundamentals

## What is Selenium?

Selenium is a tool for automating web browsers — it lets a script open a
browser, find elements on a page, interact with them (click, type, read
text), and verify results, the same actions a manual tester performs by
hand.

**Selenium WebDriver** is the core component used to write these scripts.

---

## 1. Setting Up a Browser Session

```java
WebDriver driver = new ChromeDriver();
driver.get("https://opensource-demo.orangehrmlive.com/");
driver.manage().window().maximize();
```

In practice, **WebDriverManager** (a helper library) handles downloading
the correct ChromeDriver version automatically, so you don't manage driver
binaries by hand:

```java
WebDriverManager.chromedriver().setup();
WebDriver driver = new ChromeDriver();
```

---

## 2. Locators — Finding Elements

Selenium finds elements using **locators**. The most common:

| Locator | Example | When to Use |
|---|---|---|
| ID | `By.id("username")` | Fastest, most reliable — use when available |
| Name | `By.name("password")` | When ID isn't available |
| Class Name | `By.className("submit-btn")` | When class is unique enough |
| Tag Name | `By.tagName("input")` | Broad matches, often combined with other filters |
| Link Text | `By.linkText("Forgot Password")` | For `<a>` links with exact visible text |
| CSS Selector | `By.cssSelector("input[type='email']")` | Flexible, generally fast |
| XPath | `By.xpath("//button[text()='Login']")` | Most flexible, use when nothing else works |

**Example:**

```java
WebElement usernameField = driver.findElement(By.id("username"));
```

**Priority order when choosing a locator:** ID → Name → CSS Selector →
XPath. ID is the most stable; XPath is the most powerful but also the most
likely to break if the page structure changes.

---

## 3. Common Actions

```java
usernameField.sendKeys("Admin");        // type text
usernameField.clear();                  // clear a field
loginButton.click();                    // click an element
String text = errorMessage.getText();   // read visible text
boolean shown = errorMessage.isDisplayed(); // check visibility
```

---

## 4. Waits — Why They Matter

Web pages don't load instantly. If Selenium tries to interact with an
element before it exists, the script fails with an error — even though the
element would have appeared a second later.

**Implicit Wait** — a global wait applied to every `findElement()` call:

```java
driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
```

**Explicit Wait** — waits for a specific condition on a specific element
(more reliable, the industry-preferred approach):

```java
WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
WebElement loginButton = wait.until(
    ExpectedConditions.elementToBeClickable(By.id("login-btn"))
);
```

**QA note:** mixing implicit and explicit waits in the same script can
cause unpredictable timing issues — most real projects standardize on
explicit waits.

---

## 5. A Complete Minimal Example

```java
WebDriverManager.chromedriver().setup();
WebDriver driver = new ChromeDriver();

driver.get("https://opensource-demo.orangehrmlive.com/");

WebElement username = driver.findElement(By.name("username"));
WebElement password = driver.findElement(By.name("password"));
WebElement loginBtn = driver.findElement(By.xpath("//button[@type='submit']"));

username.sendKeys("Admin");
password.sendKeys("admin123");
loginBtn.click();

driver.quit();
```

---

## Quick Reference

| Task | Method |
|---|---|
| Open a URL | `driver.get(url)` |
| Find one element | `driver.findElement(By...)` |
| Find multiple elements | `driver.findElements(By...)` |
| Type text | `element.sendKeys(text)` |
| Click | `element.click()` |
| Read text | `element.getText()` |
| Check visibility | `element.isDisplayed()` |
| Close browser | `driver.quit()` |

---

## Next Step

See [03-TestNG-Basics.md](./03-TestNG-Basics.md) to turn a script like this
into a proper, structured test with assertions.
