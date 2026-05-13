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
- docs/
- prompts/

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
  PROJECT_CONTEXT.md
  ARCHITECTURE.md
  DECISIONS.md
  TESTING_STRATEGY.md
  DELIVERY_PROCESS.md

prompts/
  01-install-claude-workflow-kit.md
  02-generate-project-context.md
  03-generate-agents.md
  04-generate-workflows.md
  05-review-installation.md
```

## CLAUDE.md requirements

The CLAUDE.md file must be concise, practical and project-specific.

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

Only create the Claude Workflow Kit structure.

## Final response

At the end, report:

1. files created
2. assumptions made
3. recommended first prompt to start the real project
4. how to use the generated workflow
5. risks or missing information
