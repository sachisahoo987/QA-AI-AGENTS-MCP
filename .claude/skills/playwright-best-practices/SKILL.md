---
name: playwright-best-practices
description: Apply reliable Playwright patterns for locators, assertions, setup, isolation, waits, accessibility, and debugging. Use when writing or reviewing Playwright tests.
user-invocable: false
---

# Playwright Test Practices

## Locators

Prefer, in order:

1. Stable test IDs for elements that need dedicated test hooks.
2. Accessible roles and names.
3. Associated labels and placeholders.
4. Stable IDs.
5. CSS selectors only when better options are unavailable.

Avoid XPath, brittle CSS chains, and unscoped positional selectors. Scope repeated controls to the relevant row, card, or dialog.

## Assertions and waits

- Use Playwright's retrying web-first assertions such as `toBeVisible`, `toHaveText`, and `toHaveURL`.
- Wait for observable conditions, not arbitrary sleep durations.
- Assert meaningful state changes, not merely that a click completed.
- Use explicit timeout overrides only when supported by a known slow operation.

## Isolation and data

- Keep tests independent and use unique or resettable data.
- Use dedicated local/test accounts from environment configuration; never embed real credentials.
- Clean up created records when the application does not isolate test data automatically.
- Never run destructive actions against production.

## Structure

```javascript
import { test, expect } from '@playwright/test';

test('user can complete the target workflow', async ({ page }) => {
  await page.goto('/tasks');
  await page.getByRole('button', { name: 'New task' }).click();
  await page.getByLabel('Title').fill('Review release checklist');
  await page.getByRole('button', { name: 'Save task' }).click();
  await expect(page.getByText('Review release checklist')).toBeVisible();
});
```

Treat routes, labels, and data in this example as placeholders. Inspect the target application and its Playwright configuration before using them.
