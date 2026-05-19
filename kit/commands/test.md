# /test

## Goal

Identify and run the smallest useful set of checks that validate the current task safely.

## When to use

Use after implementation, during debugging, before review, or when deciding whether a change is ready to ship.

## Inputs

- Changed files or target area
- Available project scripts and tooling
- User-provided test command, if any
- Known environment constraints

## Rules

- Discover commands from real project files before running them.
- Prefer targeted checks before broad suites.
- Do not invent commands unless clearly labeled as suggestions.
- Do not run destructive, expensive, or environment-mutating commands without approval.
- Investigate failures before switching to unrelated checks.
- Report skipped checks and why they were skipped.

## Workflow

1. Detect available test, lint, typecheck, build, or validation commands.
2. Map changed files to the smallest relevant command set.
3. Identify commands that are unsafe, destructive, slow, or dependent on external services.
4. Run safe commands.
5. Interpret failures and affected areas.
6. Suggest the next minimal fix or validation step.

## Validation

Confirm that:

- commands came from repository configuration or explicit user instruction;
- checks cover the changed area;
- failures include command output or a concise diagnosis;
- skipped checks are documented;
- no destructive setup or cleanup was performed without approval.

## Stop conditions

Stop and ask before running checks if:

- a command may delete data, reset state, deploy, publish, migrate, or contact production services;
- dependencies are missing and installing them was not approved;
- tests require credentials or external services not available locally;
- only broad expensive checks are available and the user has not approved them;
- the changed area cannot be mapped to any safe validation path.

## Output

Return:

- commands detected
- commands executed
- results
- failures and likely cause
- skipped checks and reason
- suggested fix or next validation step
