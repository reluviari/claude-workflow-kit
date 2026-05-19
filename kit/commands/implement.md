# /implement

## Goal

Implement an approved task in small, focused steps while preserving existing behavior and project conventions.

## When to use

Use after a plan exists or when the requested change is already specific enough to implement safely.

## Inputs

- Approved plan or explicit implementation request
- Target files or affected area
- Acceptance criteria or expected behavior
- Known constraints and validation commands

## Rules

- Read the approved plan before editing.
- Re-check relevant files before changing them.
- Preserve existing patterns and naming conventions.
- Avoid unrelated refactors and speculative abstractions.
- Prefer minimal, complete changes over broad rewrites.
- Validate with the smallest useful checks available.
- Document only what changed or what the user requested.

## Workflow

1. Review the plan, requirements, and stop conditions.
2. Inspect relevant files and current behavior.
3. Implement one coherent change at a time.
4. Keep changes scoped to the objective.
5. Run relevant checks when safe.
6. Review the diff for accidental behavior changes.
7. Report what changed, what was checked, and what remains.

## Validation

Verify that:

- the implementation matches the approved plan;
- existing behavior is preserved unless change was requested;
- tests, lint, typecheck, build, or targeted checks were run when available;
- failures are investigated rather than ignored;
- docs or context are updated only when durable knowledge changed.

## Stop conditions

Stop if:

- the implementation requires an unapproved architectural change;
- the plan is incomplete or contradicted by the code;
- tests or validation cannot be identified for risky changes;
- public API contracts would change unexpectedly;
- database schema, auth, deployment, permissions, billing, or data migration changes are needed but not approved;
- the change would overwrite or discard user work.

## Output

Return:

- summary of changes
- files changed
- checks run and results
- unresolved risks or blockers
- follow-up needed, if any
