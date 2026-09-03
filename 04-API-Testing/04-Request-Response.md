# API Request and Response

## API Request

An API request is sent from the client to the server.

A request can contain:

```text
HTTP Method
URL
Headers
Query Parameters
Path Parameters
Request Body
```

---

## Example GET Request

```text
GET https://jsonplaceholder.typicode.com/users/1
```

There is no request body for this example.

---

## Example POST Request

```text
POST https://jsonplaceholder.typicode.com/users
```

Request body:

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali.qa@example.com"
}
```

---

# API Response

The server returns a response containing:

- Status Code
- Headers
- Response Body

Example:

```json
{
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz"
}
```

---

## Response Status

Example:

```text
200 OK
```

---

## Response Headers

Example:

```text
Content-Type: application/json
```

QA can validate whether the expected headers are returned.

---

## Response Body Validation

QA can validate:

- Required fields
- Field values
- Data types
- Arrays
- Number of records
- Relationships between fields

---

## Example Postman Validation

```javascript
const data = pm.response.json();

pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

pm.test("ID is a number", function () {
    pm.expect(data.id).to.be.a("number");
});
```

---

## Request → Response Flow

```text
Client
  ↓
API Request
  ↓
Server
  ↓
API Response
  ↓
QA Validation
  ↓
PASS / FAIL
```
