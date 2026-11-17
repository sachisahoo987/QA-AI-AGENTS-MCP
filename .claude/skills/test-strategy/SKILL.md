---
name: test-strategy
description: Assign functional scenarios to unit, API/integration, component, or end-to-end layers. Use for test-pyramid planning and coverage analysis.
argument-hint: [feature or scenario file]
---

# Test Strategy

## Decision guide

- Pure deterministic logic → unit test.
- Service, persistence, validation, or API contract → API/integration test.
- Isolated rendering, accessibility, or component state → component test.
- Critical multi-step behavior across integrated layers → end-to-end test.
- Prefer the lowest layer that provides meaningful confidence; retain a small set of high-value end-to-end journeys.

## Procedure and output

1. Read `docs/test-scenarios.md`, requirements, architecture, and current tests.
2. Map each scenario to a layer and cite the source function, endpoint, component, or requirement used.
3. Explain contested choices and identify coverage gaps or excessive end-to-end testing.
4. Write `docs/test-strategy.md` with a layer distribution table, scenario mapping, rationale, and gaps.

Do not invent code entry points or force a test into a layer when evidence is missing.
