# QA AI Agents MCP

A reusable Claude Code QA toolkit. It includes six specialist agents, on-demand skills, and optional MCP connections for browser, filesystem, REST API, and MySQL testing.

The sample domain is a generic task-management application. Treat its routes and business rules as examples, not as requirements for another application.

## Project layout

```text
.claude/
  agents/                  # Selectable and delegatable QA agents
  skills/                  # On-demand QA procedures and sample domain knowledge
.mcp.json                  # Optional MCP server configuration
docs/                      # Scenario and test-strategy outputs
tests/                     # Playwright tests generated for the target application
```

## QA agents

- **Test Scenario Designer** — turns requirements and source behavior into traceable functional scenarios.
- **UI Test Agent** — writes and runs browser tests, then diagnoses failures using evidence.
- **API Test Agent** — validates API contracts, authorization, errors, and data changes in a test environment.
- **Database Test Agent** — checks schema, constraints, relationships, and persistence using a dedicated test database.
- **QA Test Reviewer** — checks tests for correctness, maintainability, coverage, and reliable selectors.
- **Test Strategy Architect** — maps scenarios to unit, API, component, and end-to-end layers.

In Claude Code, open this folder and select an agent from the agent picker, or ask the main assistant to delegate a matching QA task. Each agent loads the relevant skills from `.claude/skills/`.
The UI, API, and database agents inherit the configured MCP tools; the other agents use narrower tool allowlists.

## Setup

1. Open this folder in Claude Code.
2. Edit `.mcp.json` and replace the filesystem path and service settings with local test-environment values. Remove any server you do not use.
3. Ensure the required runtimes are installed (`npx`; `uvx` only if using the MySQL server).
4. Configure credentials through local environment variables or a secret manager. Do not commit credentials or use production accounts.
5. Add the target application's requirements, source code, and test setup to the workspace or make them available through the configured filesystem server.

MCP servers are tools that an agent can call; they are not agents by themselves. The custom agents are defined separately under `.claude/agents/`.

## Example application

The included Postman collection and SQL schema use a task-management example. Update the base URL, endpoint paths, payloads, and sample data to match your target application before running them. Run the SQL only against a fresh, disposable test database.

## Running browser tests

The test agent inspects the target application's existing Playwright setup before generating tests. If the project has Playwright installed, run a focused test with:

```powershell
npx playwright test tests\<feature>.spec.js --reporter=line
```

Tests should run against a local or explicitly designated test environment only.

## Get it on Agensi

Install these agents as ready-to-use Claude Code skills:

- **[QA Agents Core](https://agensi.io/skills/qa-agents-core)** (free): the six agents in this repo, packaged as one skill.
- **[QA Agents Pro](https://agensi.io/skills/qa-agents-pro)**: all six agents plus nine more for failure triage, flaky-test detection, root cause analysis, self-healing locators (web, Android, iOS), risk-based test selection, pairwise testing, API coverage and defect reports, with six tested scripts.

New to Agensi? [Sign up with my referral link](https://agensi.io/r/<MY_USERNAME>).

<sub>Affiliate link: if you sign up through it, I may earn a commission from Agensi at no extra cost to you.</sub>
