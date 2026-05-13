# /commit

Use this command to generate a commit message from current changes.

## Steps

1. Inspect git diff.
2. Identify the real intent of the changes.
3. Group changes by purpose.
4. Generate a concise commit message.
5. Warn if changes are mixed.

## Output

Return:

- suggested commit message
- optional extended body
- files included
- warning if changes are mixed
