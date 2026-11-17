# Sample Task API Shapes

Illustrative routes only; inspect the target API contract before generating requests.

| Method | Example route | Purpose |
|---|---|---|
| POST | `/api/auth/login` | Authenticate a test account |
| GET | `/api/projects` | List accessible projects |
| GET | `/api/projects/{projectId}/tasks` | List tasks, optionally filtered |
| POST | `/api/projects/{projectId}/tasks` | Create a task |
| GET | `/api/tasks/{taskId}` | Read task details |
| PATCH | `/api/tasks/{taskId}` | Update task fields |
| DELETE | `/api/tasks/{taskId}` | Delete a task |

Possible query filters include `status`, `priority`, and a text `search`. Response formats and status codes are application-specific and must be verified.
