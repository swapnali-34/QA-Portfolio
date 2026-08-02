# Exploratory Testing Notes

## Project

OrangeHRM Demo

## Module

Login

## Objective

Explore the Login module without predefined test cases to identify unexpected behavior and usability issues.

---

## Areas Explored

- Login using Enter key
- Copy and paste username/password
- Refresh page during login
- Open multiple browser tabs
- Browser Back button
- Resize browser window
- Long username/password input
- Special characters
- Multiple invalid login attempts
- Rapid clicking on Login button

---

## Observations

| Activity | Observation |
|----------|-------------|
| Press Enter instead of Login button | Login worked successfully |
| Copy and paste credentials | Credentials accepted successfully |
| Refresh during login | Page refreshed normally |
| Multiple browser tabs | Session remained consistent |
| Browser Back button | Protected pages were inaccessible after logout |
| Resize browser window | Layout remained responsive |
| Very long input values | Application handled input correctly |
| Special characters | Appropriate validation/error message displayed |
| Rapid clicking Login | No duplicate login requests observed |
| Multiple failed login attempts | Invalid credentials message displayed consistently |

---

## Defects Found

No functional defects were identified during exploratory testing.

---

## Conclusion

The Login module behaved consistently during exploratory testing. The application handled different user interactions, browser actions, and invalid inputs correctly without unexpected behavior.
