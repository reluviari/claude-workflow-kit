# Bugfix Workflow

## Goal

Fix a bug or regression by proving the problem, identifying the root cause, applying the smallest safe fix, and validating the behavior.

## When to use

Use when behavior is wrong, broken, regressed, flaky, or inconsistent with documented expectations.

## Required context

- Bug report, failing test, log, or reproduction steps
- Expected behavior
- Actual behavior
- Affected users, flows, or components
- Known recent changes, if relevant
- Validation path or regression test target

## Rules

- Reproduce the bug or clearly state why reproduction is not possible.
- Inspect related code and tests before changing files.
- Fix the root cause, not only the symptom, when evidence supports it.
- Keep the fix minimal and scoped.
- Add or update a regression test when practical.
- Do not bundle unrelated cleanup or refactoring.
- Escalate when the fix touches risky boundaries.

## Workflow

1. Describe or reproduce the bug.
2. Define expected and actual behavior.
3. Inspect related code, tests, logs, and recent context.
4. Identify the likely root cause with evidence.
5. Propose the minimal fix and validation path.
6. Stop for approval if the fix is risky or scope expands.
7. Implement the fix.
8. Add or update regression coverage when possible.
9. Run relevant checks.
10. Summarize cause, fix, validation, and residual risk.

## Validation

Confirm that:

- the failing behavior is fixed;
- regression coverage exists or missing coverage is explained;
- related tests/checks pass when available;
- the fix does not introduce unrelated behavior changes;
- edge cases and security implications were considered.

## Stop conditions

Stop and ask before continuing if:

- the bug cannot be reproduced and the root cause is speculative;
- the likely fix requires schema, API, auth, billing, permissions, deployment, or migration changes;
- the minimal fix requires broad refactoring;
- regression coverage is necessary but cannot be added or run;
- investigation reveals multiple unrelated bugs.

## Output

Return:

- bug summary
- expected vs actual behavior
- root cause
- fix
- regression test or validation path
- commands executed
- risks and follow-up
