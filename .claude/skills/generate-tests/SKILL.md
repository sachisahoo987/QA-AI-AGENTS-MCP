---
name: generate-tests
description: Implement and validate Playwright tests for verified application flows. Use when writing, updating, or debugging browser automation.
argument-hint: [feature or flow]
---

# Playwright Test Implementation

## Procedure

1. Inspect the existing package scripts, Playwright config, tests, application pages, and requirements.
2. Reuse the project's test conventions and add tests in its existing test directory.
3. Use `playwright-best-practices` and verify selectors against source or a configured test browser.
4. Run the focused test using the project's package manager and configured local/test base URL.
5. Diagnose failures from output, implementation, and requirements. Fix test mistakes; report suspected application defects without hiding them.
6. Report files changed, behavior covered, exact validation command, and result.

Do not target a public or production service unless the user explicitly authorizes it. Do not add dependencies or edit application code unless requested. The task-management routes in the domain skill are illustrative, not defaults.
