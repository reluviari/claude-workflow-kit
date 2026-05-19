# Rails Stack Notes

## Detection signals

Look for:

- `Gemfile` with Rails
- `config/routes.rb`
- `app/controllers`, `app/models`, `app/views`, `app/jobs`, or `app/services`
- `db/schema.rb` or `db/structure.sql`
- `test/` or `spec/`

## Common project files

- `Gemfile`
- `config/routes.rb`
- `app/models/**`
- `app/controllers/**`
- `app/views/**`
- `app/services/**`
- `app/jobs/**`
- `db/migrate/**`
- `db/schema.rb` or `db/structure.sql`
- `test/**` or `spec/**`

## Commands to discover

Discover commands from `bin/`, `Gemfile`, docs, Makefile, or CI:

- test or spec
- lint
- typecheck, if present
- db:migrate or db:test:prepare
- assets/build commands
- server/console commands

## Architecture signals

Inspect:

- MVC boundaries
- routes and controller actions
- ActiveRecord models and callbacks
- service object conventions, if already used
- jobs and background processing
- mailers
- authorization and authentication patterns
- migration and schema strategy

## Testing signals

Look for:

- Minitest or RSpec
- system/request/model/job specs
- factories/fixtures
- database cleaning strategy
- CI test and migration steps

## Documentation signals

Look for:

- setup docs
- database setup and migration notes
- deployment notes
- domain or service docs
- generated Claude docs under `docs/claude/`

## Rules

- Prefer Rails conventions unless the project has established alternatives.
- Keep controllers thin when the project already uses services or model methods.
- Do not change routes, migrations, auth, or data behavior without approval.
- Do not run migrations without approval.
- Discover commands from repository files before running them.
- Keep schema impact explicit.

## Common risks

- Adding callbacks that hide business behavior.
- Changing routes or strong parameters unintentionally.
- Running or editing migrations without understanding schema impact.
- Introducing service objects when the project does not use them.
- Breaking authorization filters.
- Assuming RSpec when the project uses Minitest, or the reverse.

## Validation checklist

- Rails conventions and test framework are identified.
- Route, model, schema, and auth impact is documented.
- Commands are discovered from `bin/`, docs, or CI.
- Relevant tests/specs are selected when available.
- Migration and rollback concerns are called out.
