# QA Agent Workspace Instructions

This workspace contains reusable QA agents and skills. The task-management application in the examples is illustrative only; adapt all test behavior to the actual application's requirements and source.

## Agent roles

- `test-scenario-designer`: produces traceable functional scenarios.
- `ui-test-agent`: implements and validates browser tests.
- `api-test-agent`: validates API contracts and behavior.
- `database-test-agent`: validates schema and persistence.
- `qa-test-reviewer`: reviews test quality and reports actionable findings.
- `test-strategy-architect`: chooses a balanced test layer for each scenario.

The agents are defined in `.claude/agents/` and load their procedures from `.claude/skills/`.

## Workspace rules

- Inspect the target application's code, test setup, and written requirements before making product-specific claims.
- Do not assume the sample routes, selectors, data, or rules apply to the target application.
- Use local or explicitly approved test environments only; never run destructive tests against production.
- Do not invent credentials or include secrets in source files. Use environment variables or a local secret manager.
- Prefer focused tests and report the exact commands and outcomes.
- If an expected behavior is unclear or source and requirements disagree, document the ambiguity instead of silently choosing one.
