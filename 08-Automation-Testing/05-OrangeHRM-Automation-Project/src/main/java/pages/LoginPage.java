package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

public class LoginPage {

    private final WebDriver driver;
    private final WebDriverWait wait;

    // Locators
    private final By usernameField = By.name("username");
    private final By passwordField = By.name("password");
    private final By loginButton = By.xpath("//button[@type='submit']");
    private final By errorMessage = By.className("oxd-alert-content-text");
    private final By requiredFieldError = By.className("oxd-input-field-error-message");
    private final By dashboardHeader = By.xpath("//h6[text()='Dashboard']");

    // TC-012 Locators: User profile dropdown and logout action link
    private final By userDropdown = By.className("oxd-userdropdown-name");
    private final By logoutLink = By.xpath("//a[text()='Logout']");

    public LoginPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    }

    public void enterUsername(String username) {
        WebElement field = wait.until(ExpectedConditions.visibilityOfElementLocated(usernameField));
        field.clear();
        field.sendKeys(username);
    }

    public void enterPassword(String password) {
        WebElement field = wait.until(ExpectedConditions.visibilityOfElementLocated(passwordField));
        field.clear();
        field.sendKeys(password);
    }
    
    public void clickLogin() {
        driver.findElement(loginButton).click();
    }

    public void login(String username, String password) {
        enterUsername(username);
        enterPassword(password);
        clickLogin();
    }

    // TC-005: Waits until dashboard header is rendered after valid authentication
    public void waitForDashboardToLoad() {
        wait.until(ExpectedConditions.visibilityOfElementLocated(dashboardHeader));
    }

    // TC-006 & TC-018: Retrieves the invalid credentials error banner text
    public String getErrorMessage() {
        WebElement error = wait.until(ExpectedConditions.visibilityOfElementLocated(errorMessage));
        return error.getText();
    }

    // TC-008 & TC-009: Checks single required validation error message display
    public boolean isRequiredFieldErrorDisplayed() {
        WebElement error = wait.until(ExpectedConditions.visibilityOfElementLocated(requiredFieldError));
        return error.isDisplayed();
    }

    // TC-010: Returns total count of required validation messages when multiple fields are empty
    public int getRequiredFieldErrorCount() {
        wait.until(ExpectedConditions.visibilityOfElementLocated(requiredFieldError));
        List<WebElement> errors = driver.findElements(requiredFieldError);
        return errors.size();
    }

    // TC-011: Returns the HTML 'type' attribute to verify password masking (type='password')
    public String getPasswordFieldType() {
        WebElement field = wait.until(ExpectedConditions.visibilityOfElementLocated(passwordField));
        return field.getAttribute("type");
    }
    
    // TC-012: Executes logout sequence from dashboard profile menu
    public void logout() {
        wait.until(ExpectedConditions.elementToBeClickable(userDropdown)).click();
        wait.until(ExpectedConditions.elementToBeClickable(logoutLink)).click();
    }

    // Confirms redirection back to login page by checking login button visibility
    public boolean isLoginFormDisplayed() {
        return wait.until(ExpectedConditions.visibilityOfElementLocated(loginButton)).isDisplayed();
    }

    public String getCurrentUrl() {
        return driver.getCurrentUrl();
    }

    public boolean waitForUrlToContain(String fraction, int timeoutSeconds) {
        WebDriverWait customWait = new WebDriverWait(driver, Duration.ofSeconds(timeoutSeconds));
        return customWait.until(ExpectedConditions.urlContains(fraction));
    }
}