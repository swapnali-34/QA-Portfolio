# Test Design Techniques — Theory

Conceptual explanations of the test design techniques applied practically in
[`06-Projects/Test-Design-Techniques`](../06-Projects/Test-Design-Techniques).

These techniques exist to test **smart, not exhaustive** — covering the most
defect-prone areas without needing to test every possible input.

---

## 1. Equivalence Partitioning (EP)

**Concept:** Divide input data into groups (partitions) that should behave the
same way. Test one representative value from each group instead of every
possible value.

**Why it matters:** Reduces the number of test cases while still covering all
distinct behaviors.

**Example — Age field accepting 18 to 60:**

| Partition | Range | Representative Test Value | Expected Result |
|---|---|---|---|
| Invalid (below range) | < 18 | 15 | Rejected |
| Valid | 18–60 | 30 | Accepted |
| Invalid (above range) | > 60 | 65 | Rejected |

Instead of testing every number from 1 to 100, three well-chosen values cover
all three behaviors.

---

## 2. Boundary Value Analysis (BVA)

**Concept:** Defects cluster at the *edges* of input ranges, not in the middle.
BVA tests the boundary values directly — just inside, on, and just outside the
limit.

**Why it matters:** Off-by-one errors (`<` vs `<=`) are one of the most common
coding mistakes, and BVA is designed specifically to catch them.

**Example — same Age field (18 to 60):**

| Test Value | Position | Expected Result |
|---|---|---|
| 17 | Just below lower boundary | Rejected |
| 18 | On lower boundary | Accepted |
| 60 | On upper boundary | Accepted |
| 61 | Just above upper boundary | Rejected |

**EP vs BVA together:** EP picks *one* value per partition; BVA specifically
targets the *edges* of those partitions. In practice, they're almost always
used together.

---

## 3. Decision Table Testing

**Concept:** Used when system behavior depends on a *combination* of multiple
conditions, not just one input. A table lists every combination of conditions
and the corresponding expected action.

**Why it matters:** Business rules often involve multiple factors together
(e.g. discount eligibility depends on both membership type AND order amount).
A decision table makes sure no combination is missed.

**Example — Discount rule: "Members get 10% off orders over ₹1000":**

| Is Member? | Order > ₹1000? | Expected Discount |
|---|---|---|
| Yes | Yes | 10% applied |
| Yes | No | No discount |
| No | Yes | No discount |
| No | No | No discount |

Four conditions, four rows — every combination is explicitly tested rather
than assumed.

---

## 4. State Transition Testing

**Concept:** Used when an object's behavior depends on its *current state*,
and the same action can produce different results depending on that state.

**Why it matters:** Many real systems are state-driven (order status, account
status, login sessions) — testing only the "current" state misses bugs that
only show up during a transition.

**Example — Order status workflow:**

```
Placed → Confirmed → Shipped → Delivered
   ↓
Cancelled
```

| Current State | Action | Valid Next State | Invalid Transition to Test |
|---|---|---|---|
| Placed | Cancel order | Cancelled | Attempting "Ship" directly from Placed |
| Confirmed | Ship order | Shipped | Attempting "Cancel" after Shipped |
| Shipped | Mark delivered | Delivered | Attempting to re-cancel a Delivered order |

State transition testing isn't just about testing valid transitions — testing
**invalid transitions** (e.g. cancelling an already-delivered order) is often
where real bugs are found.

---

## Quick Reference — Which Technique to Use When

| Situation | Technique to Use |
|---|---|
| A field accepts a range of values | Equivalence Partitioning + Boundary Value Analysis |
| Behavior depends on multiple combined conditions | Decision Table Testing |
| Behavior depends on the object's current status/state | State Transition Testing |
