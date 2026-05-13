# Install Claude Workflow Kit in an Existing Project

You are installing Claude Workflow Kit in an existing software project.

Your goal is to create a structured Claude Code workspace adapted to this codebase.

Do not change product behavior.

Do not refactor application code.

Do not add dependencies.

Do not modify business logic.

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
- stop conditions

Avoid duplicated sections. Prefer real project facts over generic kit text. If existing instructions conflict with kit discipline, preserve the project-specific constraint and document the conflict clearly in `CLAUDE.md`.

## Step 6 — Agents

Create only useful agents for this project.

Each agent must be adapted to the detected stack.

## Step 7 — Commands

Create commands adapted to the project.

Minimum commands:

- plan.md
- implement.md
- review.md
- test.md
- commit.md
- update-context.md

Use real commands from the repository when available.

Examples:

- npm test
- npm run lint
- npm run typecheck
- yarn test
- pnpm test
- bundle exec rspec
- rails test
- docker compose up
- make test

Do not invent commands unless clearly marked as suggested.

## Step 8 — Workflows

Create workflows adapted to the project.

Minimum workflows:

- feature-development.md
- bugfix.md
- refactor.md
- technical-design.md
- release-review.md

Each workflow must include:

- when to use
- required context
- steps
- expected output
- validation strategy
- stop conditions

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

## Final response

After creating the files, report:

1. detected stack
2. whether `CLAUDE.md` was created or reconciled
3. files created
4. files updated
5. cleanup performed or skipped
6. assumptions made
7. commands detected
8. suggested commands
9. recommended next steps
10. risks or missing information
