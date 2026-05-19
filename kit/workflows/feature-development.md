# Feature Development Workflow

## Goal

Deliver a new feature through explicit requirements, technical planning, approval, implementation, validation, and handoff.

## When to use

Use for user-visible or system-visible functionality that changes behavior, adds capabilities, or expands an existing flow.

## Required context

- Business objective
- User or stakeholder need
- Acceptance criteria
- Relevant existing implementation
- Constraints, deadlines, or non-goals
- Expected validation path

## Rules

- Understand the product goal before proposing code changes.
- Inspect existing implementation and patterns before planning.
- Do not implement non-trivial features before approval.
- Keep scope limited to the requested feature.
- Do not generate unrelated application scaffolding.
- Treat public API, schema, auth, billing, permissions, and deployment changes as explicit approval gates.
- Document durable project knowledge only when it will remain useful.

## Workflow

1. Clarify the business objective and intended user outcome.
2. Extract requirements, non-goals, and acceptance criteria.
3. Inspect existing implementation and affected modules.
4. Identify reuse opportunities and integration points.
5. Propose a technical plan with risks and validation.
6. Wait for approval before implementation when scope is non-trivial.
7. Implement in small increments.
8. Add or update tests when behavior changes.
9. Run relevant checks.
10. Review the diff for unrelated changes.
11. Update docs or Claude context when durable knowledge changed.
12. Summarize delivery and remaining risks.

## Validation

Confirm that:

- acceptance criteria are covered;
- changed behavior has tests or a stated manual validation path;
- existing behavior is not accidentally changed;
- relevant lint, typecheck, test, build, or targeted checks were run when available;
- documentation is updated only where needed.

## Stop conditions

Stop and ask before continuing if:

- requirements or acceptance criteria are unclear;
- the feature requires unapproved architecture, API, schema, auth, billing, permissions, or deployment changes;
- implementation would require deleting or overwriting user work;
- no safe validation path exists for a risky behavior change;
- the requested feature conflicts with observed project constraints.

## Output

Return:

- objective
- requirements and acceptance criteria
- plan or implementation summary
- files changed
- tests/checks run
- risks and assumptions
- next step
