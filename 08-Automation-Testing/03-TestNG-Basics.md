# TestNG Basics

## What is TestNG?

TestNG is a testing framework for Java that adds structure Selenium alone
doesn't have: annotations to control setup/teardown, built-in assertions,
test grouping, and reporting — turning a bare script into an actual
automated test.

---

## 1. Key Annotations & Execution Order

```java
@BeforeSuite   → runs once, before all tests in the suite
@BeforeClass   → runs once, before all tests in this class
@BeforeMethod  → runs before EVERY @Test method
@Test          → the actual test
@AfterMethod   → runs after EVERY @Test method
@AfterClass    → runs once, after all tests in this class
@AfterSuite    → runs once, after all tests in the suite
```

**Typical pattern for a Selenium test:**

```java
@BeforeMethod
public void setUp() {
    WebDriverManager.chromedriver().setup();
    driver = new ChromeDriver();
    driver.get("https://opensource-demo.orangehrmlive.com/");
}

@Test
public void validLoginTest() {
    // test steps here
}

@AfterMethod
public void tearDown() {
    driver.quit();
}
```

This means a fresh browser opens before every test and closes after —
each test runs in a clean, independent state.

---

## 2. Assertions

Assertions are how a test actually decides PASS or FAIL — without them,
the script just runs actions with nothing verifying the result.

```java
Assert.assertEquals(actualTitle, "OrangeHRM");
Assert.assertTrue(errorMessage.isDisplayed());
Assert.assertNotNull(driver.findElement(By.id("username")));
```

If an assertion fails, TestNG marks the test as **FAILED** and (by default)
stops that test method — the same PASS/FAIL judgment used throughout this
portfolio's manual test cases, just enforced automatically here.

---

## 3. A Complete Minimal Test

```java
public class LoginTest {
    WebDriver driver;

    @BeforeMethod
    public void setUp() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.get("https://opensource-demo.orangehrmlive.com/");
    }

    @Test
    public void validLoginTest() {
        driver.findElement(By.name("username")).sendKeys("Admin");
        driver.findElement(By.name("password")).sendKeys("admin123");
        driver.findElement(By.xpath("//button[@type='submit']")).click();

        String url = driver.getCurrentUrl();
        Assert.assertTrue(url.contains("dashboard"));
    }

    @AfterMethod
    public void tearDown() {
        driver.quit();
    }
}
```

---

## 4. Grouping & Priority

```java
@Test(priority = 1)
public void validLoginTest() { }

@Test(priority = 2)
public void invalidLoginTest() { }

@Test(groups = "smoke")
public void smokeTestLogin() { }
```

`priority` controls execution order; `groups` lets you run a subset of
tests (e.g. run only the `"smoke"` group before a release, similar to the
smoke-testing concept in
[07-Notes/06-Exploratory-Smoke-Functional-Testing.md](../../07-Notes/06-Exploratory-Smoke-Functional-Testing.md)).

---

## 5. Running Tests via a Suite File (testng.xml)

```xml
<suite name="OrangeHRM Suite">
    <test name="Login Tests">
        <classes>
            <class name="tests.LoginTest"/>
        </classes>
    </test>
</suite>
```

This lets you run a defined set of test classes together and generate a
TestNG HTML report showing pass/fail counts — the automated equivalent of
this portfolio's manual Test Execution Reports.

---

## Next Step

See [04-Page-Object-Model.md](./04-Page-Object-Model.md) to structure this
code properly instead of writing locators directly inside the test class.
