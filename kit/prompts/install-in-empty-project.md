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

Each agent must include:

- responsibility
- when to use
- what to inspect
- expected output
- constraints
- checklist

## Command requirements

Create practical commands for the project.

Minimum commands:

- plan.md
- implement.md
- review.md
- test.md
- commit.md
- update-context.md

Each command must include:

- purpose
- inputs
- steps
- expected output
- stop conditions

## Workflow requirements

Create workflows for:

- feature development
- bugfix
- refactor
- technical design
- release review

Each workflow must follow:

1. understand scope
2. inspect current files
3. identify constraints
4. identify risks
5. propose plan
6. wait for approval before major changes
7. implement incrementally
8. run available checks
9. summarize changes
10. update docs when needed

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

## Final response

At the end, report:

1. whether `CLAUDE.md` was created or reconciled
2. files created
3. cleanup performed or skipped
4. assumptions made
5. recommended first prompt to start the real project
6. how to use the generated workflow
7. risks or missing information
