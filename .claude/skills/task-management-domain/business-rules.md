# Sample Task-Management Rules

These are illustrative acceptance rules for a fictional task application. Confirm requirements before treating them as expected behavior.

- A task title is required and contains 1–120 characters after trimming whitespace.
- Task status is one of `todo`, `in_progress`, or `done`.
- Priority is one of `low`, `medium`, or `high`.
- A supplied due date must be a valid calendar date.
- Users can only view or change projects and tasks they are authorized to access.
- Updating task status preserves its title, description, priority, and due date unless explicitly changed.
- Deleting a task removes it from the project task list and relevant task searches.
- Filtering by status and priority combines filters rather than silently ignoring one.

Adapt or remove each rule to match the actual product under test.
