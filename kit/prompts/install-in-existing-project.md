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

## Step 5 — CLAUDE.md

The CLAUDE.md file must be specific to this repository.

It must include:

- detected stack
- project structure
- how to run locally
- how to test
- how to lint
- how to typecheck, if applicable
- coding standards found in the project
- architectural boundaries
- SOLID and Clean Architecture observations
- architecture improvement recommendations
- AI execution rules
- forbidden behaviors
- review expectations
- stop conditions

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

Do not delete files.

Do not change application behavior.

Do not modify database schema.

Do not change authentication or authorization.

Do not modify deployment configuration.

This task is only about installing Claude Workflow Kit.

## Final response

After creating the files, report:

1. detected stack
2. files created
3. files updated
4. assumptions made
5. commands detected
6. suggested commands
7. recommended next steps
8. risks or missing information
