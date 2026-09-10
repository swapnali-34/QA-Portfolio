# API Bug Reports

## Project: User Management API

**API:** JSONPlaceholder · **Tool:** Postman · **Environment:** QA-API-Environment

> **Note:** These are practice defect reports demonstrating professional API bug reporting — not confirmed production defects, since JSONPlaceholder is a mock API that can't reproduce every real-world validation failure.

---

## Summary

| Bug ID | Title | Severity | Priority | Status |
|---|---|---|---|---|
| BUG-API-001 | User ID returned as String instead of Number | High | High | Open (Practice Example) |
| BUG-API-002 | API returns success response for invalid email | Medium | High | Open (Practice Example) |
| BUG-API-003 | PATCH updates unspecified user fields | High | High | Open (Practice Example) |

---

## BUG-API-001 — User ID returned as String instead of Number

**Module:** User Retrieval · **Endpoint:** `GET /users/{id}`

**Steps to Reproduce:** Send `GET /users/1` in Postman and inspect the data type of the `id` field.

| | Expected | Actual |
|---|---|---|
| `id` type | `1` (number) | `"1"` (string) |

**Impact:** Type mismatches break comparisons, sorting, and integrations expecting a numeric ID.

**Severity/Priority:** High/High — violates the API contract on a field used to identify every user.

**Suggested Fix:** Serialize `id` as a number, not a string.

---

## BUG-API-002 — API accepts invalid email and returns success

**Module:** User Creation · **Endpoint:** `POST /users`

**Steps to Reproduce:** `POST /users` with `"email": "invalid-email"`.

| | Expected | Actual |
|---|---|---|
| Result | 4xx + validation error | `201` — user created with the invalid email stored |

**Impact:** Invalid data enters the system, causing downstream data-quality and notification issues.

**Severity/Priority:** Medium/High — data quality issue that should be caught at the API boundary.

**Suggested Fix:** Add server-side email format validation before accepting the record.

---

## BUG-API-003 — PATCH modifies fields not included in the request

**Module:** User Update · **Endpoint:** `PATCH /users/{id}`

**Steps to Reproduce:** `GET /users/1`, note existing fields, then `PATCH /users/1` with only `{"email": "updated.qa@example.com"}` and compare the response to the original.

| | Expected | Actual |
|---|---|---|
| Unspecified fields (`name`, `username`) | Unchanged | Missing from the response |

**Impact:** Silent data loss on partial updates — a serious integrity risk in a real system.

**Severity/Priority:** High/High — partial update should never touch fields it wasn't given.

**Suggested Fix:** Update only the fields present in the PATCH body; preserve everything else.

---

## Bug Reporting Checklist

Unique ID · clear title · module/method/endpoint · environment · severity + priority · preconditions · reproduction steps · test data · expected vs. actual result · impact · status · evidence (screenshots/logs) when applicable.

---

## Key QA Principle

A `200 OK` isn't proof of correctness, and a `400`/`404` isn't automatically a failure — both are judged against the **API contract + expected behavior**, not the status code alone.

**Defect Lifecycle:** `New → Assigned → Open → In Progress → Fixed → Retest → (Closed | Reopened)`

A strong bug report answers: **what was requested → what was expected → what happened → why it matters → how to reproduce it.**
