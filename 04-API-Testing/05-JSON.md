# JSON

JSON stands for **JavaScript Object Notation**.

It is commonly used to exchange data between clients and APIs.

---

## JSON Object

Example:

```json
{
    "id": 1,
    "name": "Leanne Graham",
    "email": "Sincere@april.biz"
}
```

---

## JSON Data Types

JSON supports:

- String
- Number
- Boolean
- Object
- Array
- Null

### String

```json
"name": "Leanne Graham"
```

### Number

```json
"id": 1
```

### Boolean

```json
"active": true
```

### Array

```json
"roles": ["QA", "Tester"]
```

### Null

```json
"middleName": null
```

---

## JSON Array

Example:

```json
[
    {
        "id": 1,
        "name": "Leanne Graham"
    },
    {
        "id": 2,
        "name": "Ervin Howell"
    }
]
```

---

## QA Validation

QA should validate not only the value but also the data type.

For example:

```json
"id": 1
```

is a number.

But:

```json
"id": "1"
```

is a string.

These are not the same data type.

---

## Postman Data Type Validation

```javascript
pm.test("ID is a number", function () {
    pm.expect(data.id).to.be.a("number");
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
data.forEach(function (item) {
    pm.expect(item.userId).to.eql(2);
});
```

This validates every returned record.
