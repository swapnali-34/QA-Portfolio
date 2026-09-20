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
 * Automates test cases already documented manually in:
 * 06-Projects/OrangeHRM-Login-Testing/03-Test-Cases/Login-Test-Cases.md
 *
 * TC IDs below match Login-Test-Cases.md exactly (corrected — an earlier
 * version of this file mislabeled these as TC-001 to TC-004, which were
 * the wrong IDs).
 *
 * Covers TC-005, TC-006, TC-008, TC-009 as a starting point. More can be
 * added following the same pattern (e.g. TC-010, TC-011, TC-012, TC-018).
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

        // Wait until the dashboard UI finishes rendering
        loginPage.waitForDashboardToLoad();

        // Capture screenshot of fully rendered page
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
