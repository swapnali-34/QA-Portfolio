# Postman Basics

## Overview

Postman is an API testing tool used to send HTTP requests, inspect responses, create test scripts, validate API behavior, and organize API test collections.

---

## Creating a GET Request

Example:

```text
GET https://jsonplaceholder.typicode.com/users/1
```

Click **Send** to execute the request.

---

## Creating a POST Request

Select:

```text
POST
```

Enter the endpoint:

```text
https://jsonplaceholder.typicode.com/users
```

Select:

```text
Body → raw → JSON
```

Example:

```json
{
    "name": "Swapnali QA",
    "username": "swapnali_qa",
    "email": "swapnali.qa@example.com"
}
```

---

# Postman Variables

Variables allow reusable values to be stored and reused in requests.

Example:

```text
baseUrl = https://jsonplaceholder.typicode.com
```

Request:

```text
{{baseUrl}}/users/1
```

---

## Dynamic User ID

Variable:

```text
userId = 5
```

Request:

```text
{{baseUrl}}/users/{{userId}}
```

---

## Query Parameter Variable

Variable:

```text
userId = 2
```

Request:

```text
{{baseUrl}}/posts?userId={{userId}}
```

---

# Environment Variables

Postman environment variables can be accessed using:

```text
{{variableName}}
```

Example:

```text
{{baseUrl}}
```

---

# Setting a Variable from a Response

Postman test scripts can store dynamic response values.

Example:

```javascript
const data = pm.response.json();

pm.environment.set("createdUserId", data.id);
```

The value can then be reused:

```text
{{createdUserId}}
```

---

# API Chaining

Example:

```text
POST /users
      ↓
Extract ID
      ↓
createdUserId
      ↓
GET /users/{{createdUserId}}
```

This allows one API request to provide data required by another request.
