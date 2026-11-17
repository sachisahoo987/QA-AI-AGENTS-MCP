# Sample Task UI Selectors

These are suggested semantic hooks for a fictional interface. Verify actual accessible names, labels, and test IDs against the application before using them.

- Task list: `getByRole('list', { name: 'Tasks' })`
- New task: `getByRole('button', { name: 'New task' })`
- Task title: `getByLabel('Title')`
- Task description: `getByLabel('Description')`
- Status filter: `getByLabel('Status')`
- Priority filter: `getByLabel('Priority')`
- Save task: `getByRole('button', { name: 'Save task' })`
- Task row: `getByTestId('task-row')`, scoped by task title
- Delete task: `getByRole('button', { name: 'Delete task' })`, scoped to the task row
