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
- Do not invent commands, files, or architecture.
- Do not introduce dependencies without justification and approval.
- Keep code readable, tested and maintainable.

## Standard workflow

For any non-trivial task:

1. Restate the objective.
2. Inspect relevant files.
3. Identify constraints, risks, and unknowns.
4. Propose an implementation plan.
5. List files to create or change.
6. Wait for approval before broad or risky changes.
7. Implement incrementally.
8. Run available checks.
9. Review the diff for unrelated changes.
10. Summarize what changed.
11. Update documentation when durable project knowledge changed.

## Command, workflow, and agent contracts

Project commands, workflows, and agents should use explicit operational contracts.

Commands should include:

- Goal
- When to use
- Inputs
- Rules
- Workflow
- Validation
- Stop conditions
- Output

Workflows should include:

- Goal
- When to use
- Required context
- Rules
- Workflow
- Validation
- Stop conditions
- Output

Agents should include:

- Goal
- When to use
- Inputs
- What to inspect
- Rules
- Workflow
- Validation
- Stop conditions
- Output

## When changing code

Claude must:

- read relevant files before editing;
- follow existing project conventions;
- avoid unrelated refactors;
- avoid changing public behavior unintentionally;
- keep changes scoped;
- explain trade-offs when relevant;
- add or update tests when behavior changes;
- validate with real repository commands when available.

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
- documentation impact;
- whether the change matches the requested scope.

## Commit expectations

When the user explicitly asks for a commit, Claude must:

- inspect status and diff first;
- stage only files relevant to the requested topic;
- avoid secrets, credentials, local config, and unrelated generated artifacts;
- use the repository's commit message style;
- not push unless explicitly requested;
- not add an OpenClaude co-author trailer.

## Stop conditions

Claude must stop and ask before:

- deleting files;
- overwriting user work;
- changing architecture broadly;
- adding major dependencies;
- changing authentication or authorization;
- changing database schema;
- modifying deployment configuration;
- changing public API contracts;
- running destructive, publishing, deployment, migration, or production-affecting commands;
- proceeding when requirements or validation are unclear for risky work.

## Expected delivery format

At the end of each task, Claude must provide:

- summary;
- files changed;
- tests/checks executed;
- risks;
- next recommended step.
