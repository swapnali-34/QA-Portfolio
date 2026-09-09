# Tools Notes — Jira & Postman

*Status: Currently Learning*

Working notes on two tools central to QA work: Jira (defect/issue tracking)
and Postman (API testing) — the latter applied practically in
[`04-API-Testing`](../04-API-Testing).

---

## Part 1: Jira for QA

### What is Jira?

Jira is a project and issue-tracking tool widely used by Agile teams to plan work, track bugs, and manage sprints.

### Key Issue Types

| Issue Type | Used For |
|---|---|
| **Story** | A feature or requirement from the user's perspective |
| **Bug** | A defect found in the software |
| **Task** | A general piece of work not tied to a specific feature |
| **Epic** | A large body of work made up of multiple stories |
| **Sub-task** | A smaller piece of work under a story, task, or bug |

### Typical Bug Workflow States in Jira

```
To Do → In Progress → In Review → Ready for QA → In Testing → Done
                                                       ↓
                                                  Reopened
```

(Exact workflow states vary by team/project configuration — this is a common default pattern.)

### What a QA Analyst Typically Does in Jira

- Logs new bugs with clear steps to reproduce, severity, priority, and
  environment details
- Attaches screenshots or logs as evidence
- Links bugs to the related Story/Epic for traceability
- Updates bug status as it moves through the workflow (e.g. moving to "Ready
  for Retest" once a developer marks a fix as done)
- Tracks sprint testing progress using Jira boards/filters

### Example Bug Fields in Jira

| Field | Example |
|---|---|
| Summary | "Login fails with valid credentials on Chrome" |
| Issue Type | Bug |
| Severity | High |
| Priority | High |
| Environment | Chrome v120, Windows 11, Staging |
| Steps to Reproduce | 1. Go to login page 2. Enter valid credentials 3. Click Login |
| Expected Result | User is logged in and redirected to dashboard |
| Actual Result | Page reloads with no error, user remains on login page |

---

## Part 2: Postman for API Testing

### What is Postman?

Postman is a tool used to send API requests and verify their responses, without needing to write full automation code.

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

```
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

See [`04-API-Testing`](../04-API-Testing) in this portfolio for a full applied example of these concepts.
