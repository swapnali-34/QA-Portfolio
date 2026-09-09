# Search Functionality Testing

A standalone manual testing exercise covering a generic search feature —
one of the most commonly referenced examples in QA interviews
("how would you test a search bar?").

---

## Feature Under Test

A typical search bar that accepts text input and returns matching results
from a product/content list.

---

## Test Scenarios

| Scenario ID | Scenario |
|---|---|
| TS-01 | Verify search returns correct results for a valid, exact keyword |
| TS-02 | Verify search with a partial keyword returns relevant results |
| TS-03 | Verify search is case-insensitive |
| TS-04 | Verify search with leading/trailing spaces still returns correct results |
| TS-05 | Verify search with no matching results shows an appropriate message |
| TS-06 | Verify search with an empty query (blank search) |
| TS-07 | Verify search with special characters |
| TS-08 | Verify search with only whitespace as input |
| TS-09 | Verify search with an extremely long input string |
| TS-10 | Verify search results update correctly when the query is changed |
| TS-11 | Verify search performance/response time is reasonable |
| TS-12 | Verify search is not vulnerable to injection-style input |
| TS-13 | Verify search suggestions/autocomplete (if applicable) |
| TS-14 | Verify search across multiple matching results shows all relevant items |
| TS-15 | Verify clearing the search field resets results to the default view |

---

## Test Cases

| Test Case ID | Title | Steps | Test Data | Expected Result |
|---|---|---|---|---|
| TC-01 | Exact keyword match | 1. Enter a known, exact product name 2. Press Search | "Laptop" | Matching product(s) are displayed |
| TC-02 | Partial keyword match | 1. Enter part of a known product name 2. Press Search | "Lap" | Products containing "Lap" (e.g. "Laptop") are displayed |
| TC-03 | Case insensitivity | 1. Enter a keyword in a different case than stored data 2. Press Search | "LAPTOP" | Same results as the lowercase/exact-case search |
| TC-04 | No matching results | 1. Enter a keyword that doesn't exist in the dataset 2. Press Search | "Xyzabc123" | A clear "No results found" message is shown, not a broken or blank page |
| TC-05 | Empty search | 1. Leave the search field blank 2. Press Search | (empty) | Either all items are shown, or a validation message prompts for input — behavior should be defined and consistent |
| TC-06 | Whitespace-only search | 1. Enter only spaces 2. Press Search | "   " | Treated the same as an empty search, not as a literal "space" match |
| TC-07 | Special characters | 1. Enter symbols not expected in product names 2. Press Search | "@#$%" | No results found, and no application error is thrown |
| TC-08 | Extremely long input | 1. Paste a very long string (500+ characters) into the search field 2. Press Search | (long string) | Application handles input gracefully — no crash, and either truncates or processes without error |
| TC-09 | Leading/trailing spaces | 1. Enter a valid keyword with extra spaces around it 2. Press Search | " Laptop " | Same results as searching "Laptop" without extra spaces |
| TC-10 | Injection attempt | 1. Enter a SQL/script-style pattern 2. Press Search | `'; DROP TABLE products; --` | Input is treated as plain text; no error exposing backend details, no unintended behavior |
| TC-11 | Clear search | 1. Perform a search 2. Clear the search field | — | Results reset to the default/full list view |

---

## Why Search Is a Strong Interview Topic

Search functionality touches nearly every testing category at once:
functional correctness, negative/edge-case handling, performance, security
(injection), and usability — making it a common way interviewers assess how
broadly a candidate thinks about a "simple-looking" feature.

---

## Key Learning

Search testing benefits from **Equivalence Partitioning** (valid keyword,
partial keyword, invalid/no-match keyword, empty input, malicious input) —
see
[`07-Notes/02-Test-Design-Techniques-Theory.md`](../07-Notes/02-Test-Design-Techniques-Theory.md)
for the underlying technique.
