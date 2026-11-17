---
name: review-tests
description: Review automated tests for correctness, coverage, reliability, accessibility, and maintainability. Use for test-code reviews and QA audits.
argument-hint: [test file or directory]
---

# Automated Test Review

## Review process

1. Read the requirements and relevant application implementation.
2. Read the tests and `playwright-best-practices` when reviewing browser tests.
3. Verify that selectors, test data, setup, assertions, and cleanup match real application behavior.
4. Report confirmed issues with exact file and line references. Separate definite defects from questions.

## Output

Order findings by severity (Critical, High, Medium, Low). For each include:

- File and line
- Issue and impact
- Evidence or violated requirement/practice
- Suggested correction

Finish with what is covered well, gaps, and an overall assessment. Do not invent issues or edit files unless asked.
