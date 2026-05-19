# Generate Workflows From Scope

Create `.claude/workflows` based on the project's real delivery process, stack, and risk profile.

## Goal

Generate workflow documents that guide repeatable delivery without pretending that `.claude/workflows/` is automatically loaded by Claude Code.

## Rules

- Base workflows on real project structure, commands, and delivery constraints.
- Do not invent process, commands, environments, or approval requirements without evidence.
- Keep workflows practical, concise, and stack-aware.
- Include validation and stop gates in every workflow.
- Do not instruct application scaffolding or unrelated code generation.
- Keep generated Claude documentation under `docs/claude/`.

## Minimum workflows

Create or adapt:

- feature-development
- bugfix
- refactor
- technical-design
- release-review

## Required workflow structure

Each generated workflow must use this structure:

```md
# Workflow Name

## Goal
## When to use
## Required context
## Rules
## Workflow
## Validation
## Stop conditions
## Output
```

## Minimum quality bar

Each workflow must include:

- explicit goal;
- when to use it;
- required context before starting;
- rules and constraints;
- step-by-step workflow;
- validation strategy;
- stop conditions and approval gates;
- predictable output format.

## Output

Return:

- workflows created
- workflow-specific assumptions
- validation strategy
- stop gates added
