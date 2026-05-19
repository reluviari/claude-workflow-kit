# Generic Stack Notes

## Detection signals

Use this file when no supported stack is clearly detected or when the project combines multiple technologies.

Look for:

- dependency manifests such as `package.json`, `pyproject.toml`, `requirements.txt`, `Gemfile`, `go.mod`, `Cargo.toml`, or similar;
- framework config files;
- source directory layout;
- test directories and CI workflows;
- Docker, compose, Makefile, or scripts.

## Common project files

- README and setup docs
- dependency manifests
- build or task scripts
- source directories
- test directories
- config files
- CI/CD workflows
- deployment docs

## Commands to discover

Discover commands from real files before suggesting or running them:

- test commands
- lint commands
- typecheck commands
- build commands
- format commands
- validation scripts

## Architecture signals

Inspect how the project separates:

- entrypoints
- domain or business logic
- infrastructure or external integrations
- data access
- configuration
- tests and fixtures

## Testing signals

Look for:

- existing test framework
- unit, integration, or e2e test directories
- CI validation steps
- coverage configuration
- manual validation docs

## Documentation signals

Look for:

- setup instructions
- architecture notes
- decision records
- delivery/release notes
- generated Claude docs under `docs/claude/`

## Rules

- Do not infer stack-specific architecture without evidence.
- Mark assumptions clearly.
- Prefer observed commands over conventional guesses.
- Do not scaffold application code.
- Keep generated Claude documentation under `docs/claude/`.

## Common risks

- Misidentifying the stack from a single file.
- Inventing commands that are not present.
- Applying framework conventions that the project does not use.
- Missing generated or vendored directories.
- Treating examples or docs as production code.

## Validation checklist

- Stack evidence is listed with files.
- Commands are discovered from repository files.
- Unknowns are marked as open questions.
- No application scaffolding is generated.
- Suggested workflow matches observed project structure.
