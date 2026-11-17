# Sample Task-Management User Flows

These are example flows for a fictional task application. Adapt them to the target product.

## Sign in

1. Open the sign-in page.
2. Enter a configured test account.
3. Submit the form and verify a successful authenticated state.

## Create and update a task

1. Open a project the test account can access.
2. Create a task with a title, description, priority, and due date.
3. Verify it appears in the task list with the saved values.
4. Change its status and verify the updated state.

## Search and filter

1. Create or select tasks with different statuses and priorities.
2. Apply one or more filters and a search term.
3. Verify all visible results satisfy every active filter.
4. Clear filters and verify the full list returns.

## Authorization boundary

1. Create a task in a project owned by or accessible to one test account.
2. Authenticate as a separate account without that access.
3. Verify the second account cannot read, update, or delete the protected task.

## Delete

1. Select a task created by the test.
2. Confirm deletion if the interface asks.
3. Verify the task is absent from the list and search results.
