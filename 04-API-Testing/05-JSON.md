# JSON

JSON stands for **JavaScript Object Notation** — the standard format APIs use to exchange data.

---

## JSON Object

```json
{
    "id": 1,
    "name": "Leanne Graham",
    "email": "Sincere@april.biz"
}
```

## JSON Data Types

| Type | Example |
|---|---|
| String | `"name": "Leanne Graham"` |
| Number | `"id": 1` |
| Boolean | `"active": true` |
| Array | `"roles": ["QA", "Tester"]` |
| Null | `"middleName": null` |

## JSON Array

```json
[
    { "id": 1, "name": "Leanne Graham" },
    { "id": 2, "name": "Ervin Howell" }
]
```

---

## QA Validation: Value vs. Data Type

Matching value isn't enough — the **type** must match too:

```text
"id": 1     → number  ✅ correct
"id": "1"   → string  ❌ wrong type, even though it "looks" right
```

A response can return the correct value in the wrong type and still fail
validation. The Postman scripts for checking this (type, array, and
loop-based record validation) are in
[08-API-Test-Scripts.md](./08-API-Test-Scripts.md), with the full
validation checklist in [09-API-Validation.md](./09-API-Validation.md).
