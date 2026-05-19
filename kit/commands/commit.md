# /commit

## Goal

Prepare a focused commit from current changes with a clear message and safe file selection.

## When to use

Use only when the user explicitly asks to commit or asks for a commit message for reviewed changes.

## Inputs

- Current git status
- Staged and unstaged diff
- Original task or intent
- Repository commit message style

## Rules

- Inspect status and diff before preparing a commit.
- Stage only files that belong to the requested topic.
- Do not include secrets, credentials, local config, large artifacts, or unrelated generated files.
- Warn when changes are mixed across unrelated purposes.
- Do not push unless the user explicitly asks.
- Do not amend existing commits unless the user explicitly asks.
- Do not add an OpenClaude co-author trailer.

## Workflow

1. Inspect git status, staged diff, unstaged diff, and recent commit style.
2. Identify the real intent of the changes.
3. Group files by coherent purpose.
4. Warn if changes are mixed or risky.
5. Stage only relevant files.
6. Create a concise commit message focused on why the change exists.
7. Commit only after confirming there are relevant changes.
8. Report the resulting commit and remaining working tree state.

## Validation

Confirm that:

- committed files match the requested topic;
- no obvious secrets or local-only files are included;
- the message matches repository style;
- hooks pass without bypassing them;
- no OpenClaude co-author trailer is present.

## Stop conditions

Stop if:

- no relevant changes exist;
- the diff contains likely secrets or credentials;
- unrelated changes cannot be safely separated;
- pre-commit hooks fail and require investigation;
- committing would include files the user did not authorize;
- the user asks to force push, reset, discard, or amend without clear confirmation.

## Output

Return:

- commit hash, if created
- commit message
- files included
- warnings or skipped files
- remaining working tree status
