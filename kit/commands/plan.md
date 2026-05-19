# /plan

## Goal

Plan a task before implementation so the work has clear scope, risks, affected files, and validation steps.

## When to use

Use when a request requires code changes, documentation changes, workflow changes, or any non-trivial investigation before editing.

## Inputs

- Goal or problem statement
- Known scope or constraints
- Expected outcome
- Any files, errors, tickets, or context provided by the user

## Rules

- Inspect relevant files before proposing changes.
- Reuse existing patterns, utilities, and project conventions when possible.
- Do not propose implementation details that contradict observed code.
- Separate facts from assumptions.
- Keep the plan scoped to the user's request.
- Stop before implementation unless the user explicitly approves continuing.

## Workflow

1. Restate the objective in implementation-oriented terms.
2. Inspect relevant files and existing patterns.
3. Identify constraints, risks, and unknowns.
4. Decide the smallest coherent implementation approach.
5. List files likely to be created or changed.
6. Define tests, checks, or manual validation.
7. Ask only necessary clarifying questions.
8. Stop before implementation.

## Validation

Check that the plan:

- addresses the user's objective;
- references actual files or observed patterns;
- avoids unrelated refactors;
- includes verification steps;
- identifies approval gates for risky changes.

## Stop conditions

Stop and ask before implementation if:

- requirements are ambiguous enough to change the solution;
- the task may affect public APIs, schemas, auth, billing, deployment, or data migration;
- destructive or hard-to-reverse actions may be needed;
- tests or validation cannot be identified;
- the plan would require work outside the requested scope.

## Output

Return:

- objective
- current understanding
- proposed plan
- files affected
- risks and assumptions
- tests/checks
- confirmation needed before coding
