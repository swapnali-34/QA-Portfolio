# HTTP Methods

HTTP methods define the type of operation that a client wants to perform on an API resource.

---

## GET

Used to retrieve data.

Example:

```text
GET /users/1
```

Expected response:

```text
200 OK
```

### QA Validation

- Status code
- Response body
- Required fields
- Data types
- Response structure

---

## POST

Used to create a new resource.

Example:

```text
POST /users
```

Request body:

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali.qa@example.com"
}
```

Expected response:

```text
201 Created
```

### QA Validation

- Status code
- Generated ID
- Submitted data
- Response structure
- Data types

---

## PUT

Used to update/replace an existing resource.

Example:

```text
PUT /users/1
```

---

## PATCH

Used to partially update an existing resource.

Example:

```text
PATCH /users/1
```

---

## DELETE

Used to delete a resource.

Example:

```text
DELETE /users/1
```

---

## HTTP Methods Summary

| Method | Purpose |
|---|---|
| GET | Retrieve data |
| POST | Create data |
| PUT | Replace/update data |
| PATCH | Partially update data |
| DELETE | Delete data |

---

## QA Perspective

For every HTTP method, QA should verify:

```text
Request
   ↓
Expected Status Code
   ↓
Response Structure
   ↓
Response Data
   ↓
Data Types
   ↓
Business Rules
```
