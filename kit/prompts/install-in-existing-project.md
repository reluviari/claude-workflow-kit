# Install Claude Workflow Kit in an Existing Project

You are installing Claude Workflow Kit in an existing software project.

Your goal is to create a structured Claude Code workspace adapted to this codebase.

Do not change product behavior.

Do not refactor application code.

Do not add dependencies.

Do not modify business logic.

## Operating rules

- Inspect the repository before creating or changing files.
- Use evidence from files for stack, commands, architecture, and docs.
- Do not invent product facts, commands, URLs, infrastructure, or business rules.
- Mark assumptions clearly.
- Prefer reconciling existing context over replacing it.
- Validate the final file layout before reporting completion.

## Step 1 — Inspect the project

Analyze:

- folder structure
- README files
- docs
- package managers
- frameworks
- languages
- test tools
- build tools
- lint commands
- typecheck commands
- Docker files
- CI/CD files
- environment examples
- existing architecture signals
- SOLID principle usage
- Clean Architecture boundaries, if applicable
- coupling between layers, modules and infrastructure

## Step 2 — Detect the stack

Identify the stack with evidence from files.

Do not guess without evidence.

If something is inferred, mark it as an assumption.

Use stack notes from `.claude-workflow-kit/kit/stacks/` as detection guidance, not as application scaffolding instructions.

## Step 3 — Evaluate architecture and design principles

Evaluate whether the existing project shows evidence of:

- SOLID principles;
- Clean Architecture or equivalent separation of concerns;
- clear boundaries between domain, application, infrastructure and interface layers, when applicable;
- low coupling and high cohesion;
- dependency direction compatible with the project's architecture.

Do not refactor code during installation.

If issues are found, document suggested improvements as recommendations only, with file/path evidence when possible.

## Step 4 — Generate project-specific AI workspace

Create or update:

```txt
CLAUDE.md
README_SUGGESTED_CLAUDE.md

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

Generated Claude Workflow Kit documentation must live under `docs/claude/`.

Treat existing content directly under `docs/` as user-owned project documentation by default. Do not move, rename, or overwrite project documentation unless explicitly requested. If old Claude Workflow Kit files already exist directly under `docs/`, migrate or reconcile them into `docs/claude/` only when they are clearly kit-generated; otherwise preserve them and report the ambiguity.

Do not create a final project-level `prompts/` directory for this installation.

## Step 5 — Reconcile CLAUDE.md automatically

The CLAUDE.md file must be specific to this repository.

If `CLAUDE.md` already exists, reconcile it in place instead of replacing it blindly.

Treat an existing `/init`-generated `CLAUDE.md` as useful project-discovery context. Preserve concrete facts about:

- detected stack
- project structure
- how to run locally
- how to test
- how to lint
- how to typecheck, if applicable
- coding standards found in the project
- architectural boundaries
- repository-specific constraints

Then merge in Claude Workflow Kit operational discipline:

- SOLID and Clean Architecture observations
- architecture improvement recommendations
- AI execution rules
- forbidden behaviors
- review expectations
- command, workflow, and agent contracts
- stop conditions

Avoid duplicated sections. Prefer real project facts over generic kit text. If existing instructions conflict with kit discipline, preserve the project-specific constraint and document the conflict clearly in `CLAUDE.md`.

## Step 6 — Suggested product README

Create or update `README_SUGGESTED_CLAUDE.md` at the project root.

Do not modify the existing `README.md`.

The suggested README must be a product and engineering README adapted to the detected product, market, stack, architecture and commands.

Use this section order when applicable:

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

- Do not mention AI, Claude, agents, prompts, generated content, or AI-assisted development.
- Do not invent URLs, credentials, features, endpoints, cloud providers, infrastructure, scripts or commands.
- If something is inferred, mark it as an assumption.
- If cloud architecture is not present, omit it or include a clearly labeled future recommendation section.
- Use Mermaid diagrams when they help explain local runtime or cloud architecture.
- Prefer tables for services, commands, endpoints, stack, tests and deployment details.
- Keep the tone professional, practical and evaluator-friendly.

## Step 7 — Agents

Create only useful agents for this project.

Each agent must be adapted to the detected stack.

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

## Step 8 — Commands

Create commands adapted to the project.

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

Use real commands from the repository when available.

Examples of command families to discover:

- npm/yarn/pnpm test, lint, typecheck, build
- bundle exec rspec
- rails test
- pytest
- docker compose commands
- make targets

Do not invent commands unless clearly marked as suggested.

## Step 9 — Workflows

Create workflows adapted to the project.

Minimum workflows:

- feature-development.md
- bugfix.md
- refactor.md
- technical-design.md
- release-review.md

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

## Important constraints

Do not implement features.

Do not refactor existing code.

Do not rename existing files.

Do not delete application files.

You may delete only temporary Claude Workflow Kit installation artifacts created by this installation flow.

Do not change application behavior.

Do not modify database schema.

Do not change authentication or authorization.

Do not modify deployment configuration.

This task is only about installing Claude Workflow Kit.

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

After creating the files, report:

1. detected stack
2. stack evidence
3. whether `CLAUDE.md` was created or reconciled
4. whether `README_SUGGESTED_CLAUDE.md` was created or updated
5. files created
6. files updated
7. cleanup performed or skipped
8. assumptions made
9. commands detected
10. suggested commands
11. validation performed
12. recommended next steps
13. risks or missing information
