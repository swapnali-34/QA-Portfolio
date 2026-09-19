# Page Object Model (POM)

## What is POM?

Page Object Model is a design pattern where each web page (or major
component) gets its own Java class, containing that page's locators and
actions. Test classes then call methods on the page object instead of
containing raw locators themselves.

**Without POM** (locators mixed into the test — hard to maintain):

```java
@Test
public void loginTest() {
    driver.findElement(By.name("username")).sendKeys("Admin");
    driver.findElement(By.name("password")).sendKeys("admin123");
    driver.findElement(By.xpath("//button[@type='submit']")).click();
}
```

**With POM** (locators live in a dedicated page class):

```java
@Test
public void loginTest() {
    LoginPage loginPage = new LoginPage(driver);
    loginPage.login("Admin", "admin123");
}
```

---

## Why It Matters

If the login page's HTML changes (say, the username field's locator
changes), you fix it in **one place** — the `LoginPage` class — instead of
hunting through every test that logs in. This is the difference between a
handful of scripts and something that resembles a real automation
framework.

| Without POM | With POM |
|---|---|
| Locators repeated across many tests | Locators defined once per page |
| A UI change breaks many tests | A UI change requires one fix |
| Test code is cluttered with selectors | Test code reads like plain steps |

---

## A Page Object Class

```java
public class LoginPage {
    WebDriver driver;

    // Locators
    By usernameField = By.name("username");
    By passwordField = By.name("password");
    By loginButton = By.xpath("//button[@type='submit']");
    By errorMessage = By.className("oxd-alert-content-text");

    // Constructor
    public LoginPage(WebDriver driver) {
        this.driver = driver;
    }

    // Actions
    public void enterUsername(String username) {
        driver.findElement(usernameField).sendKeys(username);
    }

    public void enterPassword(String password) {
        driver.findElement(passwordField).sendKeys(password);
    }

    public void clickLogin() {
        driver.findElement(loginButton).click();
    }

    public String getErrorMessage() {
        return driver.findElement(errorMessage).getText();
    }

    // Combined action for convenience
    public void login(String username, String password) {
        enterUsername(username);
        enterPassword(password);
        clickLogin();
    }
}
```

---

## Using `@FindBy` (PageFactory) — A Common Enhancement

Selenium's `PageFactory` lets you declare locators as annotated fields
instead of `By` objects, which some teams prefer for readability:

```java
public class LoginPage {
    WebDriver driver;

    @FindBy(name = "username")
    WebElement usernameField;

    @FindBy(name = "password")
    WebElement passwordField;

    @FindBy(xpath = "//button[@type='submit']")
    WebElement loginButton;

    public LoginPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void login(String username, String password) {
        usernameField.sendKeys(username);
        passwordField.sendKeys(password);
        loginButton.click();
    }
}
```

Both approaches (plain `By` locators or `@FindBy`) are valid — `@FindBy` is
slightly more common in Java-based frameworks.

---

## How the Test Class Uses It

```java
public class LoginTest {
    WebDriver driver;
    LoginPage loginPage;

    @BeforeMethod
    public void setUp() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.get("https://opensource-demo.orangehrmlive.com/");
        loginPage = new LoginPage(driver);
    }

    @Test
    public void validLoginTest() {
        loginPage.login("Admin", "admin123");
        Assert.assertTrue(driver.getCurrentUrl().contains("dashboard"));
    }

    @AfterMethod
    public void tearDown() {
        driver.quit();
    }
}
```

Notice the test method now reads almost like a manual test case's steps —
`login(username, password)` then an assertion — with all the locator
detail hidden inside `LoginPage`.

---

## Key Takeaway

POM is the standard structure real automation frameworks use in industry.
Building even a small project this way — rather than one script with
everything mixed together — is what signals "framework-aware" rather than
"just wrote a script that works once."
