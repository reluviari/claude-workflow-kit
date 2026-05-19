# Refactor Workflow

## Goal

Improve code structure, readability, or maintainability while preserving observable behavior.

## When to use

Use when the behavior is already correct and the goal is internal improvement, duplication reduction, simplification, or design cleanup.

## Required context

- Refactor objective
- Affected files or modules
- Behavior that must remain unchanged
- Existing tests or validation path
- Scope limits and compatibility constraints

## Rules

- Preserve observable behavior unless a behavior change is explicitly approved.
- Inspect affected files and existing patterns before editing.
- Keep the refactor scoped and incremental.
- Do not combine refactoring with unrelated feature or bugfix work.
- Avoid speculative abstractions.
- Preserve public APIs, schemas, data contracts, and user-facing behavior.

## Workflow

1. Define the refactor objective and non-goals.
2. Confirm behavior that must remain unchanged.
3. Inspect affected files and existing design patterns.
4. Identify tests or checks that protect behavior.
5. Propose small refactor steps.
6. Stop for approval if risk or scope is non-trivial.
7. Implement incrementally.
8. Run relevant checks.
9. Review the diff for accidental behavior changes.
10. Summarize improvements and remaining risks.

## Validation

Confirm that:

- observable behavior is unchanged;
- existing tests/checks pass when available;
- public contracts remain compatible;
- the diff does not include unrelated work;
- complexity is reduced or the intended maintainability goal is met.

## Stop conditions

Stop and ask before continuing if:

- a behavior change is required;
- test coverage is insufficient for a risky refactor;
- scope grows beyond the approved target;
- public API, schema, auth, deployment, or data contracts would change;
- investigation reveals a bug that should be handled separately.

## Output

Return:

- refactor objective
- files changed
- behavior preservation notes
- tests/checks run
- risks and follow-up
