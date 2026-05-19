# Next.js Stack Notes

## Detection signals

Look for:

- `next.config.*`
- `app/` or `pages/`
- `package.json` with `next`
- `middleware.*`
- `next-env.d.ts`
- route handlers or API routes

## Common project files

- `package.json`
- `next.config.*`
- `app/**`
- `pages/**`
- `components/**`
- `lib/**`
- `middleware.*`
- test and e2e directories

## Commands to discover

Read `package.json` scripts before assuming commands:

- dev/start
- lint
- typecheck
- test
- e2e
- build

## Architecture signals

Inspect:

- App Router vs Pages Router
- server and client component boundaries
- API routes or route handlers
- data fetching strategy
- shared UI components
- middleware and auth boundaries
- environment variable usage

## Testing signals

Look for:

- Jest, Vitest, Playwright, Cypress, or Testing Library setup
- component tests
- route handler tests
- e2e tests for critical flows
- CI build and lint steps

## Documentation signals

Look for:

- routing conventions
- deployment target notes
- environment variable docs
- authentication flow docs
- generated Claude docs under `docs/claude/`

## Rules

- Respect server/client component boundaries.
- Do not move between App Router and Pages Router without approval.
- Do not introduce new UI or state libraries without approval.
- Discover commands from `package.json`.
- Do not expose server-only secrets to client components.
- Keep rendering strategy changes explicit.

## Common risks

- Using browser-only APIs in server components.
- Importing server-only modules into client components.
- Changing rendering or caching behavior accidentally.
- Breaking middleware or auth assumptions.
- Treating API routes and route handlers as interchangeable.
- Missing environment variables during build.

## Validation checklist

- Router type is identified with evidence.
- Server/client boundaries are preserved.
- Relevant scripts are discovered from `package.json`.
- Build, lint, typecheck, or targeted tests are selected when available.
- Environment and auth impact is documented.
