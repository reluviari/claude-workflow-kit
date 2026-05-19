# Install Claude Workflow Kit in an Empty Project

You are installing Claude Workflow Kit in an empty or almost empty software project.

Your goal is not to generate application code yet.

Your goal is to create a structured Claude Code workspace adapted to the project scope and expected stack.

## Mission

Create the project AI workflow structure using:

- CLAUDE.md
- .claude/agents
- .claude/commands
- .claude/workflows
- docs/claude/

## Operating rules

- Inspect before creating files.
- Ask only for missing context that is required to create a useful workspace.
- Do not invent product facts, business rules, commands, URLs, infrastructure, or features.
- Mark assumptions clearly.
- Create a workspace for future project work, not application code.
- Validate the final file layout before reporting completion.

## First step

Inspect the current directory.

If the project is empty or almost empty, ask only for the minimum missing context:

1. project name
2. business objective
3. target users
4. expected stack
5. core features
6. non-functional requirements
7. delivery constraints

If enough context was already provided, do not ask again.

## Required output structure

Create:

```txt
CLAUDE.md
README_SUGGESTED_CLAUDE.md, only if enough product, stack and run-context is known

.claude/
  agents/
  commands/
  workflows/

docs/
  claude/
    PROJECT_CONTEXT.md
    ARCHITECTURE.md
    DECISIONS.md
    TESTING_STRATEGY.md
    DELIVERY_PROCESS.md
```

Generated Claude Workflow Kit documentation must live under `docs/claude/` so project-owned documentation can use `docs/` without mixing concerns.

Do not create a final project-level `prompts/` directory for this installation.

## CLAUDE.md reconciliation requirements

The CLAUDE.md file must be concise, practical and project-specific.

If `CLAUDE.md` already exists, reconcile it in place instead of replacing it blindly. Preserve useful project context, constraints, expected stack, and user-provided direction, then merge in Claude Workflow Kit operational discipline.

If `CLAUDE.md` does not exist, create it directly with the collected project context and kit discipline.

It must include:

- project purpose
- expected stack
- engineering principles
- standard workflow
- planning-first rule
- review-before-large-changes rule
- testing expectations
- documentation expectations
- commit expectations
- AI behavior constraints
- stop conditions

## Agent requirements

Create only agents that make sense for the project.

Possible agents:

- architect
- backend-engineer
- frontend-engineer
- qa-engineer
- code-reviewer
- devops-engineer
- security-reviewer
- product-analyst
- documentation-writer

Each agent must use this structure:

```md
---
name: agent-name
description: Use for...
---

# Agent Name

## Goal
## When to use
## Inputs
## What to inspect
## Rules
## Workflow
## Validation
## Stop conditions
## Output
```

## Command requirements

Create practical commands for the project.

Minimum commands:

- plan.md
- implement.md
- review.md
- test.md
- commit.md
- update-context.md

Each command must use this structure:

```md
# /command-name

## Goal
## When to use
## Inputs
## Rules
## Workflow
## Validation
## Stop conditions
## Output
```

Commands must be project-specific and must not invent commands unless clearly marked as suggestions.

## Workflow requirements

Create workflows for:

- feature development
- bugfix
- refactor
- technical design
- release review

Each workflow must use this structure:

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

Each workflow must include approval gates for broad, destructive, or risky changes.

## Suggested product README

If enough product, stack and run-context is known, create `README_SUGGESTED_CLAUDE.md` at the project root.

Do not create this file by inventing details. If context is insufficient, skip the file and report which information is missing.

When generated, the suggested README must follow this section order when applicable:

1. project title and concise product summary
2. market/problem context and value proposition
3. demo, deployed environments or service URLs, only when evidenced
4. local architecture diagram using Mermaid
5. prerequisites
6. how to run locally
7. available scripts or commands
8. main functional scope
9. API endpoints, if applicable
10. technology stack
11. folder structure
12. testing strategy and commands
13. CI/CD, if detected
14. observability, if detected
15. cloud architecture or scalability diagram, only when evidenced
16. decisions and trade-offs

Rules for `README_SUGGESTED_CLAUDE.md`:

- avoid changing or replacing `README.md`
- avoid mentioning AI, Claude, agents, prompts, generated content, or AI-assisted development
- avoid inventing URLs, credentials, features, endpoints, cloud providers, infrastructure, scripts or commands
- mark inferred information as an assumption
- use Mermaid diagrams when useful

## Important constraints

Do not create application code.

Do not install dependencies.

Do not create database schema.

Do not create API endpoints.

Do not create frontend screens.

Do not invent business rules.

Do not create fake commands.

Do not over-engineer.

Do not delete application files.

You may delete only temporary Claude Workflow Kit installation artifacts created by this installation flow.

Only create the Claude Workflow Kit structure.

## Final cleanup

Before your final response:

- Do not leave a project-level `prompts/` directory created only for installation.
- If `prompts/` contains only Claude Workflow Kit installation artifacts, delete those files and remove the directory.
- If `prompts/` contains user-owned or unknown files, preserve it and report why it was not removed.
- Do not leave `.claude/worktrees/` artifacts created by this installation flow.
- If `.claude/worktrees/` is empty, remove it.
- If `.claude/worktrees/` contains active or unknown content, preserve it and report the path for manual review.
- After all installation work is complete, ask the user whether they want to delete the temporary `.claude-workflow-kit/` directory.
- Delete `.claude-workflow-kit/` only after explicit user confirmation.
- If the user declines, preserve `.claude-workflow-kit/` and report that it was kept.
- If `.claude-workflow-kit/` contains unexpected content or deletion fails, preserve it and report manual cleanup guidance.

## Final response

At the end, report:

1. whether `CLAUDE.md` was created or reconciled
2. whether `README_SUGGESTED_CLAUDE.md` was created, skipped, or missing required context
3. files created
4. cleanup performed or skipped
5. assumptions made
6. recommended first prompt to start the real project
7. how to use the generated workflow
8. validation performed
9. risks or missing information
