# Day 4 - Exploratory Testing, Smoke Testing & Functional Testing

---

# 1. What is Exploratory Testing?

## Definition

**Exploratory Testing** is an approach where the tester explores the application without following predefined test cases. 
The tester learns the application while simultaneously designing and executing tests.

Unlike scripted testing, exploratory testing encourages creativity and helps uncover unexpected defects.

---

## Objectives

- Discover hidden defects.
- Learn application behavior.
- Evaluate usability.
- Verify user workflows.
- Improve test coverage.

---

## Characteristics

- No predefined test cases.
- Tester learns and tests simultaneously.
- Flexible and unscripted.
- Relies on tester experience and critical thinking.
- Useful for finding edge-case defects.

---

## Example

While testing an e-commerce website, a tester clicks the browser's **Back** button after placing an order and notices that the order is submitted twice.

This unexpected behavior is discovered through exploratory testing.

---

## Advantages

- Finds unexpected defects.
- Requires minimal preparation.
- Encourages creative thinking.
- Helps understand the application quickly.
- Effective for new or frequently changing features.

---

## Limitations

- Difficult to reproduce without proper notes.
- Test coverage is harder to measure.
- Depends on the tester's experience.
- Not suitable as the only testing approach.

---

# 2. What is Smoke Testing?

## Definition

**Smoke Testing** is a quick set of tests performed to verify that the most critical features of an application are working after a new build is deployed.

It determines whether the build is stable enough for detailed testing.

---

## Purpose

- Verify build stability.
- Ensure major features are functional.
- Decide whether to continue further testing.

---

## Common Smoke Test Scenarios

- Application launches successfully.
- Login works.
- Logout works.
- Home page loads correctly.
- Navigation menu works.
- Search feature is accessible.
- Core pages open without errors.

---

## Example

Before testing a shopping website, verify:

- Website opens.
- User can log in.
- Product page loads.
- Cart page opens.
- Logout works.

If these basic features fail, detailed testing should not continue.

---

## Advantages

- Quickly identifies unstable builds.
- Saves testing time.
- Detects major issues early.
- Improves testing efficiency.

---

# 3. What is Functional Testing?

## Definition

**Functional Testing** verifies that each feature of the application works according to the specified business requirements.

It focuses on **what the application should do** rather than how it is implemented.

---

## Objectives

- Validate business requirements.
- Verify application functionality.
- Ensure correct user interactions.
- Detect functional defects.

---

## Examples

For a shopping website, functional testing includes:

- User Login
- User Registration
- Product Search
- Add to Cart
- Remove from Cart
- Checkout
- Payment
- Logout

---

## Advantages

- Ensures application features work correctly.
- Validates business requirements.
- Improves software quality.
- Increases customer satisfaction.

---

# 4. Exploratory Testing vs Functional Testing

| Exploratory Testing | Functional Testing |
|---------------------|--------------------|
| No predefined test cases | Uses predefined test cases |
| Flexible approach | Structured approach |
| Focuses on discovering unexpected defects | Focuses on validating requirements |
| Tester designs tests while executing | Test cases are prepared before execution |
| Relies on tester experience | Relies on documented requirements |

---

# 5. Smoke Testing vs Functional Testing

| Smoke Testing | Functional Testing |
|---------------|--------------------|
| Verifies basic functionality | Verifies complete functionality |
| Performed after every new build | Performed during the testing phase |
| Covers only critical features | Covers all application features |
| Determines build stability | Ensures requirements are met |

---

# 6. Best Practices for Exploratory Testing

- Understand the application's purpose.
- Focus on critical user workflows.
- Explore different navigation paths.
- Test invalid and unexpected inputs.
- Use different browsers and devices when possible.
- Record observations while testing.
- Take screenshots of defects.
- Document reproducible issues immediately.

---

# 7. How to Identify a Good Bug

A good bug should:

- Be reproducible.
- Clearly describe the issue.
- Include exact reproduction steps.
- Specify expected and actual results.
- Mention the environment.
- Include screenshots or recordings if available.

---

# Example Exploratory Testing Checklist

- Login with valid credentials.
- Login with invalid credentials.
- Refresh pages.
- Use browser Back and Forward buttons.
- Open multiple browser tabs.
- Add multiple products to the cart.
- Remove products from the cart.
- Sort products.
- Perform checkout.
- Logout.

---
