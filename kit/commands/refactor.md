# /refactor

Use this command for scoped refactoring only.

## Steps

1. Define the refactor objective.
2. Confirm behavior must remain unchanged.
3. Inspect affected files.
4. Propose minimal refactor plan.
5. Identify tests that protect behavior.
6. Implement incrementally.
7. Run checks.
8. Review diff for behavior changes.

## Stop conditions

Stop if:

- behavior change is required;
- test coverage is insufficient for risky changes;
- the refactor grows beyond the approved scope.
