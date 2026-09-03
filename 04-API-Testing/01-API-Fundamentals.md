# API Fundamentals

## What is an API?

API stands for **Application Programming Interface**.

An API allows two software applications or systems to communicate with each other.

For example:

```text
Client
  ↓
API
  ↓
Server
  ↓
Database
```

The client sends a request to the API, and the server processes the request and sends a response.

---

## What is REST API?

REST stands for **Representational State Transfer**.

A REST API uses HTTP methods to perform operations on resources.

Common REST API methods include:

- GET
- POST
- PUT
- PATCH
- DELETE

---

## What is an Endpoint?

An endpoint is a specific URL through which a client can access a particular resource.

Example:

```text
https://jsonplaceholder.typicode.com/users/1
```

Here:

```text
/users/1
```

is the endpoint path.

---

## What is a Resource?

A resource is the data or object that an API provides access to.

Examples:

```text
/users
/posts
/products
/orders
```

---

## API Request

An API request may contain:

- HTTP Method
- URL
- Headers
- Query Parameters
- Path Parameters
- Request Body

Example:

```text
GET /users/1
```

---

## API Response

An API response may contain:

- Status Code
- Headers
- Response Body

Example:

```json
{
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret"
}
```

---

## Role of a QA Analyst in API Testing

A QA Analyst validates whether the API behaves according to requirements.

Typical validations include:

- Status code
- Response structure
- Response data
- Data types
- Required fields
- Headers
- Error handling
- Boundary conditions
- Negative scenarios
- Business rules

---

## Example

Request:

```text
GET /users/1
```

Expected:

```text
Status Code = 200
```

And:

```text
id = 1
name exists
email exists
id is a number
```

---

## Key QA Principle

A successful HTTP status code does not automatically mean the API is correct.

For example:

```text
Status = 200
id = "1"
```

If the API contract expects:

```text
id = 1
```

then the data type is incorrect.

Therefore, QA should validate both:

**Response status + Response data**
