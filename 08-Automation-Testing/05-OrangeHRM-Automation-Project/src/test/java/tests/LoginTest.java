package tests;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import pages.LoginPage;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

/**
 * Automates test cases documented in:
 * 06-Projects/OrangeHRM-Login-Testing/03-Test-Cases/Login-Test-Cases.md
 *
 * Covers: TC-005, TC-006, TC-008, TC-009, TC-010, TC-011, TC-012, TC-018.
 */
public class LoginTest {

    private WebDriver driver;
    private LoginPage loginPage;

    private static final String URL = "https://opensource-demo.orangehrmlive.com/";
    private static final String VALID_USERNAME = "Admin";
    private static final String VALID_PASSWORD = "admin123";

    @BeforeMethod
    public void setUp() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get(URL);
        loginPage = new LoginPage(driver);
    }

    @Test(priority = 1, description = "TC-005: Valid login redirects to the dashboard")
    public void validLoginTest() {
        loginPage.login(VALID_USERNAME, VALID_PASSWORD);

        Assert.assertTrue(
            loginPage.waitForUrlToContain("dashboard", 10),
            "Expected to be redirected to the dashboard after a valid login."
        );

        loginPage.waitForDashboardToLoad();
        captureScreenshot("TC005_Dashboard_Success");
    }

    @Test(priority = 2, description = "TC-006: Invalid password shows an error, no login")
    public void invalidPasswordTest() {
        loginPage.login(VALID_USERNAME, "WrongPassword123");

        String error = loginPage.getErrorMessage();
        Assert.assertTrue(
            error.toLowerCase().contains("invalid"),
            "Expected an 'invalid credentials' style error message."
        );
        Assert.assertFalse(loginPage.getCurrentUrl().contains("dashboard"));

        captureScreenshot("TC006_InvalidPassword_Alert");
    }

    @Test(priority = 3, description = "TC-008: Empty username shows a required-field validation")
    public void emptyUsernameTest() {
        loginPage.login("", VALID_PASSWORD);

        Assert.assertTrue(
            loginPage.isRequiredFieldErrorDisplayed(),
            "Expected a required-field validation message for the empty username."
        );

        captureScreenshot("TC008_EmptyUsername_Validation");
    }

    @Test(priority = 4, description = "TC-009: Empty password shows a required-field validation")
    public void emptyPasswordTest() {
        loginPage.login(VALID_USERNAME, "");

        Assert.assertTrue(
            loginPage.isRequiredFieldErrorDisplayed(),
            "Expected a required-field validation message for the empty password."
        );

        captureScreenshot("TC009_EmptyPassword_Validation");
    }

    @Test(priority = 5, description = "TC-010: Both username and password empty shows two validation errors")
    public void emptyCredentialsTest() {
        loginPage.login("", "");

        int errorCount = loginPage.getRequiredFieldErrorCount();
        Assert.assertEquals(
            errorCount,
            2,
            "Expected 2 required validation messages when both fields are empty, but got: " + errorCount
        );

        captureScreenshot("TC010_BothFieldsEmpty_Validation");
    }

    @Test(priority = 6, description = "TC-011: Password field characters are masked")
    public void passwordMaskingTest() {
        loginPage.enterPassword("admin123");

        String inputType = loginPage.getPasswordFieldType();
        Assert.assertEquals(
            inputType,
            "password",
            "Expected password input to have type='password' for visual masking."
        );

        captureScreenshot("TC011_Password_Masking");
    }

    @Test(priority = 7, description = "TC-012: Successful logout redirects back to login page")
    public void logoutTest() {
        loginPage.login(VALID_USERNAME, VALID_PASSWORD);
        loginPage.waitForDashboardToLoad();

        loginPage.logout();

        Assert.assertTrue(
            loginPage.waitForUrlToContain("login", 10),
            "Expected login URL after logout."
        );
        Assert.assertTrue(
            loginPage.isLoginFormDisplayed(),
            "Expected login form to be visible after logging out."
        );

        captureScreenshot("TC012_Logout_Success");
    }

    @Test(priority = 8, description = "TC-018: Special characters in username handled gracefully")
    public void specialCharactersInUsernameTest() {
        loginPage.login("!@#$%^&*()", VALID_PASSWORD);

        String error = loginPage.getErrorMessage();
        Assert.assertTrue(
            error.toLowerCase().contains("invalid"),
            "Expected invalid credentials warning for special characters in username, got: " + error
        );
        Assert.assertFalse(loginPage.getCurrentUrl().contains("dashboard"));

        captureScreenshot("TC018_SpecialChars_Username_Alert");
    }

    public void captureScreenshot(String testName) {
        File srcFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        File destFile = new File("screenshots/" + testName + ".png");
        destFile.getParentFile().mkdirs();
        try {
            Files.copy(srcFile.toPath(), destFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @AfterMethod
    public void tearDown() {
        if (driver != null) {
            driver.quit();
        }
    }
}