# /refactor

## Goal

Improve internal structure while preserving observable behavior.

## When to use

Use for scoped refactoring where the desired behavior is already correct and the goal is readability, maintainability, duplication reduction, or simpler design.

## Inputs

- Refactor objective
- Target files or component area
- Behavior that must remain unchanged
- Existing tests or validation path
- Constraints on scope, API, or compatibility

## Rules

- Behavior must remain unchanged unless the user explicitly approves a behavior change.
- Inspect affected files before proposing edits.
- Prefer the smallest refactor that achieves the objective.
- Do not combine refactoring with unrelated feature or bug-fix work.
- Preserve public APIs, schemas, data contracts, and user-facing behavior.
- Keep commits and summaries focused on refactor intent.

## Workflow

1. Define the refactor objective.
2. Confirm the behavior that must remain unchanged.
3. Inspect affected files and existing patterns.
4. Identify tests or checks that protect behavior.
5. Propose a minimal refactor plan.
6. Implement incrementally.
7. Run relevant checks.
8. Review the diff for accidental behavior changes.

## Validation

Verify that:

- external behavior is unchanged;
- tests or targeted checks still pass;
- the diff does not mix unrelated changes;
- public interfaces remain compatible;
- complexity is reduced without adding speculative abstractions.

## Stop conditions

Stop if:

- a behavior change is required;
- test coverage is insufficient for a risky refactor;
- the refactor grows beyond the approved scope;
- public API, schema, auth, deployment, or data contracts would change;
- the code reveals a bug that should be handled as a separate bugfix.

## Output

Return:

- refactor objective
- files changed
- behavior preserved
- checks run and results
- risks or follow-up work
