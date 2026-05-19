# Python/FastAPI Stack Notes

## Detection signals

Look for:

- `pyproject.toml`, `requirements.txt`, `uv.lock`, `poetry.lock`, or similar
- imports or files referencing FastAPI
- `main.py`, `app.py`, or application factory
- routers, schemas, dependencies, services, and tests
- ASGI server configuration

## Common project files

- `pyproject.toml`
- `requirements.txt`
- `app/main.py` or similar entrypoint
- routers
- Pydantic schemas/models
- services
- dependencies
- database/session setup
- migrations
- tests
- Docker files

## Commands to discover

Discover commands from project files, Makefile, scripts, or docs:

- test
- lint
- format
- typecheck
- run server
- build container
- migration commands

## Architecture signals

Inspect:

- app entrypoint and router registration
- Pydantic model versions
- dependency injection usage
- async/sync boundaries
- service and repository boundaries
- database session lifecycle
- auth and middleware
- external integrations

## Testing signals

Look for:

- pytest configuration
- TestClient or async client setup
- fixture design
- integration tests
- migration/database test strategy
- CI validation steps

## Documentation signals

Look for:

- API docs and OpenAPI usage
- environment variable docs
- local development setup
- migration and deployment notes
- generated Claude docs under `docs/claude/`

## Rules

- Preserve explicit API contracts and Pydantic validation.
- Do not change schemas, migrations, auth, or dependency behavior without approval.
- Respect async/sync boundaries.
- Discover commands from repository files before running them.
- Do not invent domain rules.
- Treat database and migration changes as approval gates.

## Common risks

- Mixing sync and async database/session patterns incorrectly.
- Changing response schemas without updating clients/tests.
- Bypassing dependency injection or auth dependencies.
- Running migrations without approval.
- Assuming pytest or tooling commands not present in the repo.
- Hiding validation logic outside Pydantic or boundary layers.

## Validation checklist

- Entrypoint, routers, schemas, and dependencies are identified.
- API/schema/auth/database impact is documented.
- Commands are discovered from project files or docs.
- Pytest, lint, typecheck, or targeted checks are selected when available.
- Migration and external service risks are called out.
