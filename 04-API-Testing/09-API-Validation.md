# API Validation

API validation is the process of verifying that an API response matches the expected requirements.

---

## 1. Status Code Validation

Example:

```text
GET valid resource → 200
```
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

---

## 2. Response Field Validation

```javascript
pm.test("Name exists", function () {
    pm.expect(data).to.have.property("name");
});
```

---

## 3. Value Validation

```javascript
pm.test("ID is 1", function () {
    pm.expect(data.id).to.eql(1);
});
```

---

## 4. Data Type Validation

```javascript
pm.test("ID is a number", function () {
    pm.expect(data.id).to.be.a("number");
});
```

Example:

```json
"id": 1
```

Correct type:

```text
number
```

Whereas:

```json
"id": "1"
```

is:

```text
string
```

A status code of 200 does not make an incorrect data type acceptable.

---

## 5. Header Validation

```javascript
pm.test("Content-Type is JSON", function () {
    const contentType = pm.response.headers.get("Content-Type");

    pm.expect(contentType).to.include("application/json");
});
```

---

## 6. Array Validation

```javascript
pm.test("Response is an array", function () {
    pm.expect(data).to.be.an("array");
});
```

---

## 7. Record Count Validation

```javascript
pm.test("Response contains 10 records", function () {
    pm.expect(data).to.have.lengthOf(10);
});
```

---

## 8. Validate Every Record

```javascript
pm.test("All records have userId = 2", function () {
    data.forEach(function (item) {
        pm.expect(item.userId).to.eql(2);
    });
});
```

---

## 9. Negative Testing

Negative testing verifies that the API handles invalid input correctly.

Example:

```text
GET /users/9999
```

Expected:

```text
404 Not Found
```

Test:

```javascript
pm.test("Invalid user returns 404", function () {
    pm.response.to.have.status(404);
});
```

---

## 10. API Chaining Validation

A dynamic value can be extracted from one response and used in another request.

```javascript
pm.environment.set("createdUserId", data.id);
```

Then:

```text
GET {{baseUrl}}/users/{{createdUserId}}
```

---

## API Validation Checklist

- [x] Status code
- [x] Response body
- [x] Required fields
- [x] Exact values
- [x] Data types
- [x] Headers
- [x] Array structure
- [x] Record count
- [x] Every-record validation
- [x] Negative scenarios
- [x] Dynamic values
- [x] API chaining
