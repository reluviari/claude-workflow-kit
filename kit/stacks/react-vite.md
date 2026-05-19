# React/Vite Stack Notes

## Detection signals

Look for:

- `vite.config.*`
- `package.json` with `vite`, `react`, or related plugins
- `src/main.*`
- `src/App.*`
- React component directories
- browser test setup

## Common project files

- `package.json`
- `vite.config.*`
- `tsconfig.*`
- `src/main.*`
- `src/App.*`
- `src/components/**`
- `src/routes/**` or router configuration
- test setup files

## Commands to discover

Read `package.json` scripts before assuming commands:

- dev
- lint
- typecheck
- test
- build
- preview

## Architecture signals

Inspect:

- routing approach
- component hierarchy
- state management
- API client boundaries
- styling strategy
- design tokens or UI conventions
- environment variable usage via Vite conventions

## Testing signals

Look for:

- Vitest, Jest, Testing Library, Playwright, or Cypress
- component tests
- user-flow tests
- mock/service worker setup
- CI lint/build/test steps

## Documentation signals

Look for:

- setup and local development docs
- component or design-system docs
- environment variable docs
- generated Claude docs under `docs/claude/`

## Rules

- Preserve existing component conventions.
- Do not redesign UI without request.
- Do not introduce new routing, state, or UI libraries without approval.
- Discover commands from `package.json`.
- Keep browser environment variables explicit and safe.
- Validate user-facing changes through tests or manual flow checks.

## Common risks

- Mixing unrelated redesign with behavior changes.
- Duplicating API client logic.
- Changing state ownership accidentally.
- Breaking routing assumptions.
- Exposing non-public environment variables to the browser.
- Adding broad snapshots instead of useful behavior tests.

## Validation checklist

- Component and routing patterns are identified.
- State/API impact is documented.
- Relevant scripts are discovered from `package.json`.
- Build, lint, typecheck, or targeted tests are selected when available.
- Manual user-flow validation is listed when automation is absent.
