# Tools Notes — Jira & Postman

Working notes on two tools central to QA work: Jira (defect/issue tracking)
and Postman (API testing) — the latter applied practically in
[`04-API-Testing`](../04-API-Testing).

---

## Part 1: Jira

Jira is a project and issue-tracking tool widely used by Agile teams to
plan work, track bugs, and manage sprints — QA uses it to log defects,
track testing progress, and manage sprint work.

For the deeper dive — issue types, boards, workflows, priority vs severity,
linking issues, and JQL — see
[07-Jira-Fundamentals-for-QA.md](./07-Jira-Fundamentals-for-QA.md).

---

## Part 2: Postman for API Testing

### What is Postman?

Postman is a tool used to send API requests and verify their responses,
without needing to write full automation code.

### Key Concepts

| Concept | Description |
|---|---|
| **Collection** | A folder grouping related API requests together (e.g. all "User Management API" requests) |
| **Request** | A single API call (GET, POST, PUT, PATCH, DELETE) to a specific endpoint |
| **Environment** | A set of variables (e.g. base URL, tokens) that can change between setups (e.g. QA vs Production) |
| **Environment Variable** | A reusable value like `{{baseUrl}}` or `{{createdUserId}}`, avoiding hardcoded values |
| **Test Script** | JavaScript code run after a request to automatically validate the response |
| **Assertion** | A specific check within a test script (e.g. "status code should be 200") |

### Basic Workflow in Postman

```text
Create Request → Set Method + URL → Add Headers/Body (if needed)
        ↓
   Send Request
        ↓
  Review Response (status, body, headers)
        ↓
  Write Test Script to Assert Expected Behavior
        ↓
   Save to Collection for Reuse
```

### Example Test Script (from the API Testing project)

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

pm.test("User ID is a number", function () {
    const data = pm.response.json();
    pm.expect(data.id).to.be.a("number");
});
```

### Why Postman Matters for QA

- Lets testers validate APIs directly, independent of the UI
- Useful for testing backend logic before the frontend is even built
- Supports environment variables and chaining, enabling realistic multi-step
  workflows (e.g. create a user, then fetch, update, and delete that same
  user using its generated ID)

See [`04-API-Testing`](../04-API-Testing) in this portfolio for a full applied
example of these concepts.
