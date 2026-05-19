# /update-context

## Goal

Update durable project context after meaningful knowledge has changed.

## When to use

Use after implementation, investigation, design, or review when stable project knowledge should be preserved for future Claude sessions or contributors.

## Inputs

- New stable knowledge learned during the task
- Files changed or decisions made
- Existing context files under `docs/claude/`
- Existing `CLAUDE.md` guidance

## Rules

- Update only durable knowledge, not temporary task notes.
- Prefer existing context files over creating new files.
- Do not duplicate information already documented elsewhere.
- Separate facts, decisions, assumptions, and open questions.
- Do not invent product, architecture, or testing details.
- Keep generated Claude docs under `docs/claude/`.

## Workflow

1. Identify stable knowledge learned during the task.
2. Decide where it belongs:
   - `CLAUDE.md`
   - `docs/claude/PROJECT_CONTEXT.md`
   - `docs/claude/ARCHITECTURE.md`
   - `docs/claude/DECISIONS.md`
   - `docs/claude/TESTING_STRATEGY.md`
   - `docs/claude/DELIVERY_PROCESS.md`
3. Read the target file before editing.
4. Add or update only the relevant durable section.
5. Remove or revise stale context if the task proved it wrong.
6. Report what changed and why it matters.

## Validation

Confirm that:

- the update is durable beyond the current task;
- the target file is the right home for the information;
- no temporary notes, logs, or implementation noise were added;
- facts are supported by code, docs, or explicit user input;
- context remains concise and navigable.

## Stop conditions

Stop if:

- the information is speculative or not yet decided;
- the only knowledge is temporary task state;
- the update would duplicate existing documentation;
- the correct location is unclear and choosing wrong would confuse future work;
- the change would rewrite project policy without user confirmation.

## Output

Return:

- files updated
- knowledge added or changed
- stale knowledge removed, if any
- why it matters
- open questions, if any
