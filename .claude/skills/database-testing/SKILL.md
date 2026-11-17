---
name: database-testing
description: Validate database schema, migrations, constraints, relationships, transactions, and persistence safely in a dedicated test environment.
argument-hint: [table, migration, or feature]
---

# Database Testing

## Procedure

1. Inspect schema definitions, migrations, data-access code, and the application's test database configuration.
2. Confirm the target database is local or explicitly approved and dedicated to testing. Stop if its identity is unclear.
3. Prefer application integration tests and read-only queries for inspection.
4. Verify relevant column types, nullability, unique and foreign-key constraints, indexes, transaction behavior, and persisted application changes.
5. Use isolated fixtures and clean up only test records created for the run.
6. Report verified behavior, the safe validation command/query category, environment assumptions, and cleanup.

Never expose credentials or unnecessary personal data. Do not run destructive DDL/DML, modify production data, or claim a check passed if the database connection failed.
