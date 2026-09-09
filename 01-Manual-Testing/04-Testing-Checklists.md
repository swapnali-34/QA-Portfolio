# Testing Checklists

Reusable manual testing checklists — the kind of quick-reference artifact a
QA team keeps on hand and applies across multiple features or releases,
rather than a one-off test case document.

---

## 1. UI / Usability Checklist

General checks for visual consistency and usability across a web
application.

- [ ] Page layout is aligned correctly (no overlapping or misaligned elements)
- [ ] Fonts, colors, and styles are consistent across pages
- [ ] All buttons and links are clickable and clearly labeled
- [ ] Images and icons load correctly and are not broken
- [ ] Error messages are clear, specific, and visible near the relevant field
- [ ] Success messages/confirmations are shown after key actions
- [ ] Placeholder text is present and helpful in input fields
- [ ] Mandatory fields are clearly marked (e.g. with an asterisk)
- [ ] Tab order moves logically through the form
- [ ] Page is responsive and usable on different screen sizes
- [ ] Loading indicators appear during data fetches/page transitions
- [ ] No layout breaks when content is empty, minimal, or very long
- [ ] Navigation menu is consistent and accessible from every page
- [ ] Footer/header content is consistent across pages

---

## 2. Cross-Browser Testing Checklist

Checks to confirm consistent behavior across different browsers.

- [ ] Page renders correctly in Chrome
- [ ] Page renders correctly in Firefox
- [ ] Page renders correctly in Edge
- [ ] Page renders correctly in Safari (if applicable)
- [ ] Fonts and layout remain consistent across browsers
- [ ] All interactive elements (buttons, dropdowns, modals) function the same way across browsers
- [ ] JavaScript-dependent features work in each browser
- [ ] No browser-specific console errors appear
- [ ] Forms submit correctly in each browser
- [ ] Browser back/forward navigation behaves correctly
- [ ] Zoom in/out doesn't break the layout
- [ ] Cookies/local storage behavior is consistent (where applicable)

---

## 3. Regression Testing Checklist

A general checklist to run before signing off on a build after changes have
been made, ensuring existing functionality wasn't broken.

- [ ] Core user flows (login, logout, primary feature paths) still work
- [ ] Recently fixed bugs remain fixed (retest, not just re-check)
- [ ] Areas surrounding the changed code are tested, not just the change itself
- [ ] Data created/modified in one module still displays correctly in related modules
- [ ] Existing integrations (e.g. third-party APIs, payment flows) still function
- [ ] No new console errors or warnings appear
- [ ] Previously passing automated/manual smoke tests still pass
- [ ] Performance hasn't visibly degraded on key pages
- [ ] Permissions/role-based access still behaves as expected
- [ ] Notifications/emails triggered by key actions still fire correctly

---

## How These Are Used

- The **UI/Usability checklist** is run once per new feature or page.
- The **Cross-Browser checklist** is run before a release, or when
  browser-specific bugs are suspected.
- The **Regression checklist** is run after any bug fix or code change,
  before a build is considered stable enough for further testing or release.

These checklists are intentionally general-purpose — reusable across
different applications and features, complementing the feature-specific
test cases in this repository (e.g.
[01-Login-Form-Testing.md](./01-Login-Form-Testing.md),
[06-Projects/OrangeHRM-Login-Testing](../06-Projects/OrangeHRM-Login-Testing)).
