# CLAUDE.md

This file defines how Claude Code should work in this repository.

Claude must treat this file as project context and execution guidance.

## Project purpose

Describe the project purpose here.

## Current stack

Describe the detected or expected stack here.

## Engineering principles

- Understand before changing.
- Plan before implementing.
- Prefer small, safe and reversible changes.
- Keep architecture simple and explicit.
- Preserve existing patterns unless there is a clear reason to change.
- Do not invent business rules.
- Do not introduce dependencies without justification.
- Keep code readable, tested and maintainable.

## Standard workflow

For any non-trivial task:

1. Restate the objective.
2. Inspect relevant files.
3. Identify constraints.
4. Propose an implementation plan.
5. List files to create or change.
6. Wait for approval before broad changes.
7. Implement incrementally.
8. Run available checks.
9. Summarize what changed.
10. Update documentation when needed.

## When changing code

Claude must:

- follow existing project conventions;
- avoid unrelated refactors;
- avoid changing public behavior unintentionally;
- keep changes scoped;
- explain trade-offs when relevant;
- add or update tests when behavior changes.

## When reviewing code

Claude must check:

- correctness;
- readability;
- architecture;
- security;
- performance;
- tests;
- error handling;
- edge cases;
- documentation impact.

## Stop conditions

Claude must stop and ask before:

- deleting files;
- changing architecture broadly;
- adding major dependencies;
- changing authentication or authorization;
- changing database schema;
- modifying deployment configuration;
- changing public API contracts.

## Expected delivery format

At the end of each task, Claude must provide:

- summary;
- files changed;
- tests/checks executed;
- risks;
- next recommended step.
