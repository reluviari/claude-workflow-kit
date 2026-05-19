# Release Review Workflow

## Goal

Assess whether a set of changes is ready for delivery, merge, or release.

## When to use

Use before merging, tagging, deploying, publishing, or handing off changes that should be considered release-ready.

## Required context

- Original objective or release scope
- Current git diff or branch changes
- Validation results
- Documentation, config, migration, or deployment impact
- Known risks and rollback expectations

## Rules

- Inspect actual changes before giving a verdict.
- Compare included changes against the intended scope.
- Separate release blockers from follow-up work.
- Treat migrations, config, CI/CD, deployment, auth, permissions, billing, and external integrations as high-risk areas.
- Do not approve release readiness when validation is unknown for risky changes.
- Do not perform release, deploy, publish, tag, or push actions unless explicitly requested.

## Workflow

1. Inspect git status, diff, and relevant commit history.
2. Review scope against the objective.
3. Check tests and validation evidence.
4. Check documentation and generated artifact impact.
5. Check config, deployment, migration, and rollback concerns.
6. Identify blockers, non-blocking risks, and follow-up tasks.
7. Produce a final delivery recommendation.

## Validation

Confirm that:

- all included changes are understood;
- relevant checks were run or explicitly skipped with reason;
- docs and changelog impact were considered;
- rollback or recovery concerns are documented;
- the approval recommendation matches the evidence.

## Stop conditions

Stop and ask before approving if:

- the diff or release scope is unclear;
- validation is missing for high-risk changes;
- secrets, credentials, or local-only artifacts appear in the diff;
- deployment, migration, or rollback steps are unknown;
- changes include unrelated work that should be split.

## Output

Return:

- release summary
- included changes
- tests/checks and results
- documentation/config/deployment impact
- blockers
- risks and rollback notes
- approval recommendation
