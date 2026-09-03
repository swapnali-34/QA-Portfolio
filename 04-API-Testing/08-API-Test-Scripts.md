# API Test Scripts

Postman test scripts are JavaScript-based validations used to verify API responses.

They can validate:

- Status codes
- Response body
- Response properties
- Data types
- Response values
- Headers
- Arrays
- Multiple records
- Negative scenarios
- Dynamic data

---

## Status Code Validation

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

---

## Response JSON

```javascript
const data = pm.response.json();
```

This converts the JSON response into a JavaScript object that can be validated.

---

## Property Validation

```javascript
pm.test("Response contains ID", function () {
    pm.expect(data).to.have.property("id");
});
```

---

## Exact Value Validation

```javascript
pm.test("ID is 1", function () {
    pm.expect(data.id).to.eql(1);
});
```

---

## Data Type Validation

```javascript
pm.test("ID is a number", function () {
    pm.expect(data.id).to.be.a("number");
});
```

---

## Header Validation

```javascript
pm.test("Content-Type is JSON", function () {
    const contentType = pm.response.headers.get("Content-Type");

    pm.expect(contentType).to.include("application/json");
});
```

---

## Array Validation

```javascript
pm.test("Response is an array", function () {
    pm.expect(data).to.be.an("array");
});
```

---

## Array Length Validation

```javascript
pm.test("Response contains 10 records", function () {
    pm.expect(data).to.have.lengthOf(10);
});
```

---

## Loop Validation

```javascript
pm.test("All records have userId = 2", function () {
    data.forEach(function (item) {
        pm.expect(item.userId).to.eql(2);
    });
});
```

---

## Storing a Response Value

```javascript
pm.environment.set("createdUserId", data.id);
```

---

## Using a Stored Variable

```text
GET {{baseUrl}}/users/{{createdUserId}}
```

---

## API Chaining

```text
POST /users
      ↓
Extract ID
      ↓
Store ID
      ↓
GET /users/{{createdUserId}}
      ↓
Validate response
```

---

## Negative Testing

```javascript
pm.test("Status code is 404", function () {
    pm.response.to.have.status(404);
});
```

A test expecting 404 should PASS when the API correctly returns 404.
