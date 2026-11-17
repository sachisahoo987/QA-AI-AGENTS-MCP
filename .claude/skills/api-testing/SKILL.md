---
name: api-testing
description: Plan, implement, and validate API tests from a verified API contract. Use for endpoint, integration, authentication, validation, and error-response testing.
argument-hint: [endpoint or feature]
---

# API Testing

## Procedure

1. Read the API specification and inspect route, validation, authentication, and service code.
2. Confirm the configured base URL is local or explicitly approved for testing.
3. Use a dedicated test identity and keep tokens/passwords in environment variables or a local secret manager.
4. Cover the relevant success response, invalid input, unauthorized access, forbidden access, and persistence effects.
5. Assert status codes, response shape, important values, and side effects. Keep tests independent and reset created data.
6. Run a focused test and report exact command and outcome.

Do not target production, run destructive requests without explicit authorization, perform high-volume probing, or log credentials. Example routes in the domain skill are not API requirements; verify the actual application contract.
