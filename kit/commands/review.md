# /review

## Goal

Review current changes for correctness, scope, architecture, tests, security, and delivery risk.

## When to use

Use before merging, committing, releasing, or handing off changes for human review.

## Inputs

- Original objective or plan
- Current git diff or changed files
- Relevant tests, logs, or validation output
- Project constraints and acceptance criteria

## Rules

- Inspect the actual diff before making findings.
- Compare changes against the original objective.
- Use evidence-based findings with file references when possible.
- Distinguish blocking issues from non-blocking improvements.
- Do not request broad refactors unless they are required for correctness or safety.
- Call out missing tests only when they would materially reduce risk.

## Workflow

1. Inspect git status and diff.
2. Identify the intent and scope of the changes.
3. Check correctness and edge cases.
4. Check architecture and maintainability.
5. Check tests and validation coverage.
6. Check security, data, auth, and deployment risks.
7. Produce a verdict with prioritized findings.

## Validation

Confirm that the review:

- covers all changed areas;
- cites evidence for each issue;
- separates confirmed bugs from risks or suggestions;
- includes a clear approval recommendation;
- does not invent project requirements.

## Stop conditions

Stop and ask for more context if:

- the original objective is unknown and affects the verdict;
- the diff is unavailable;
- generated, vendored, or large binary changes obscure the review;
- required validation output is missing for high-risk changes;
- secrets or credentials appear in the diff.

## Output

Return:

- summary
- verdict: approve, approve with notes, request changes, or blocked
- blocking issues with severity and evidence
- non-blocking issues
- missing tests or validation
- risk level
- approval recommendation
