CREATE DATABASE IF NOT EXISTS qa_task_app;
USE qa_task_app;

CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    display_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(120) NOT NULL,
    created_by INT NOT NULL,
    FOREIGN KEY (created_by) REFERENCES users(user_id)
);

CREATE TABLE IF NOT EXISTS tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    title VARCHAR(120) NOT NULL,
    description TEXT,
    status ENUM('todo', 'in_progress', 'done') NOT NULL DEFAULT 'todo',
    priority ENUM('low', 'medium', 'high') NOT NULL DEFAULT 'medium',
    due_date DATE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO users (email, display_name) VALUES
    ('qa.user@example.test', 'QA Test User'),
    ('sample.user@example.test', 'Sample User');

INSERT INTO projects (project_name, created_by) VALUES
    ('Sample QA Project', 1);

INSERT INTO tasks (project_id, title, description, status, priority, due_date) VALUES
    (1, 'Review sample requirements', 'Confirm acceptance criteria for a test task.', 'todo', 'high', '2026-12-01'),
    (1, 'Verify task filters', 'Check filtering by status and priority.', 'in_progress', 'medium', '2026-12-05'),
    (1, 'Prepare test summary', 'Record the results of the QA run.', 'done', 'low', '2026-12-10');

SELECT
    p.project_name,
    t.title,
    t.status,
    t.priority,
    t.due_date
FROM projects AS p
JOIN tasks AS t ON t.project_id = p.project_id
ORDER BY t.due_date;

SELECT status, COUNT(*) AS task_count
FROM tasks
GROUP BY status
ORDER BY status;
