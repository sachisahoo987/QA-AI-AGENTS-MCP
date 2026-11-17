---
name: create-scenarios
description: Create functional QA scenarios from user stories, requirements, and verified application behavior. Use for scenario design, acceptance coverage, and test-case drafting.
argument-hint: [feature or user story]
---

# Functional Scenario Design

## Procedure

1. Read the feature request, relevant product requirements, and implementation code.
2. Identify actors, preconditions, state transitions, permissions, validations, and observable results.
3. For each relevant flow, consider:
   - Successful use
   - Business rules and boundaries
   - Authentication and authorization
   - Invalid input and error handling
   - Empty, loading, and other UI states
4. Record scenarios in `docs/test-scenarios.md`. Trace each expected result to a requirement or verified behavior. Label assumptions and open questions.

## Scenario template

```markdown
### TC-<ID>: <Title>
**Category**: <Happy Path | Business Rule | Security | Negative | Boundary | UI State>
**Priority**: <P0 | P1 | P2 | P3>
**Preconditions**: <Required state>
**Steps**: <Numbered actions>
**Expected Results**: <Observable outcomes>
**Traceability**: <Requirement or source reference>
**Suggested Layer**: <Unit | API | Component | E2E>
```

Do not treat examples from the sample domain as requirements for another application.
