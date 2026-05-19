# Node/NestJS Stack Notes

## Detection signals

Look for:

- `package.json` with `@nestjs/*`
- `nest-cli.json`
- `src/main.*`
- modules, controllers, providers, DTOs, guards, pipes, or interceptors
- e2e test setup

## Common project files

- `package.json`
- `nest-cli.json`
- `src/main.*`
- `src/**/*.module.*`
- `src/**/*.controller.*`
- `src/**/*.service.*`
- `src/**/*.dto.*`
- `test/**` or `*.spec.*`
- ORM or migration config

## Commands to discover

Read `package.json` scripts before assuming commands:

- start/dev
- lint
- test
- test:e2e
- test:cov
- build
- migration commands

## Architecture signals

Inspect:

- module boundaries
- controllers and route contracts
- providers/services
- DTO validation
- guards and auth flow
- pipes, interceptors, and filters
- persistence/ORM layer
- external integrations

## Testing signals

Look for:

- Jest unit tests
- e2e tests
- testing module setup
- mocked providers or real integration tests
- CI lint/test/build steps

## Documentation signals

Look for:

- API docs or OpenAPI/Swagger setup
- environment variable docs
- module/domain docs
- migration notes
- generated Claude docs under `docs/claude/`

## Rules

- Preserve module boundaries.
- Do not change DTOs, API contracts, guards, or persistence behavior without approval.
- Prefer explicit DTO validation.
- Keep controllers thin when the project already follows that pattern.
- Discover commands from `package.json`.
- Do not invent domain rules.

## Common risks

- Bypassing validation pipes.
- Changing DTO shape without updating tests and clients.
- Moving logic into controllers.
- Breaking dependency injection provider scopes.
- Changing guards or auth assumptions.
- Running migrations without approval.

## Validation checklist

- Module, controller, provider, and DTO patterns are identified.
- API/schema/auth impact is documented.
- Relevant scripts are discovered from `package.json`.
- Unit, e2e, lint, or build checks are selected when available.
- Migration or external integration risks are called out.
