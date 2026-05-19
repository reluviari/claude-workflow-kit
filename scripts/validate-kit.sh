#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
failures=0

fail() {
  echo "[fail] $*" >&2
  failures=$((failures + 1))
}

pass() {
  echo "[pass] $*"
}

require_dir() {
  local path="$1"
  if [[ -d "$ROOT_DIR/$path" ]]; then
    pass "dir exists: $path"
  else
    fail "missing dir: $path"
  fi
}

require_file() {
  local path="$1"
  if [[ -f "$ROOT_DIR/$path" ]]; then
    pass "file exists: $path"
  else
    fail "missing file: $path"
  fi
}

require_contains() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -Eq -- "$pattern" "$ROOT_DIR/$file"; then
    pass "$file contains $label"
  else
    fail "$file missing $label"
  fi
}

require_sections() {
  local file="$1"
  shift
  local section

  for section in "$@"; do
    require_contains "$file" "^## ${section}$" "section: ${section}"
  done
}

require_agent_frontmatter() {
  local file="$1"

  require_contains "$file" '^---$' "frontmatter boundary"
  require_contains "$file" '^name: [a-z0-9-]+$' "agent name"
  require_contains "$file" '^description: Use ' "agent description"
}

check_shell_syntax() {
  local file="$1"

  if bash -n "$ROOT_DIR/$file"; then
    pass "shell syntax: $file"
  else
    fail "shell syntax failed: $file"
  fi
}

required_dirs=(
  kit/agents
  kit/base
  kit/commands
  kit/prompts
  kit/stacks
  kit/workflows
  scripts
)

required_files=(
  README.md
  CHANGELOG.md
  LICENSE
  kit/base/CLAUDE.md
  kit/prompts/install-in-existing-project.md
  kit/prompts/install-in-empty-project.md
  kit/prompts/generate-agents-from-scope.md
  kit/prompts/generate-workflows-from-scope.md
  scripts/install.sh
  scripts/build-zip.sh
)

commands=(
  kit/commands/plan.md
  kit/commands/implement.md
  kit/commands/review.md
  kit/commands/test.md
  kit/commands/refactor.md
  kit/commands/commit.md
  kit/commands/update-context.md
)

workflows=(
  kit/workflows/feature-development.md
  kit/workflows/bugfix.md
  kit/workflows/refactor.md
  kit/workflows/technical-design.md
  kit/workflows/release-review.md
)

agents=(
  kit/agents/architect.md
  kit/agents/backend-engineer.md
  kit/agents/frontend-engineer.md
  kit/agents/qa-engineer.md
  kit/agents/code-reviewer.md
  kit/agents/devops-engineer.md
  kit/agents/security-reviewer.md
  kit/agents/product-analyst.md
  kit/agents/documentation-writer.md
)

stacks=(
  kit/stacks/generic.md
  kit/stacks/nextjs.md
  kit/stacks/react-vite.md
  kit/stacks/node-nestjs.md
  kit/stacks/python-fastapi.md
  kit/stacks/rails.md
)

for dir in "${required_dirs[@]}"; do
  require_dir "$dir"
done

for file in "${required_files[@]}"; do
  require_file "$file"
done

for file in "${commands[@]}"; do
  require_file "$file"
  require_sections "$file" Goal "When to use" Inputs Rules Workflow Validation "Stop conditions" Output
done

for file in "${workflows[@]}"; do
  require_file "$file"
  require_sections "$file" Goal "When to use" "Required context" Rules Workflow Validation "Stop conditions" Output
done

for file in "${agents[@]}"; do
  require_file "$file"
  require_agent_frontmatter "$file"
  require_sections "$file" Goal "When to use" Inputs "What to inspect" Rules Workflow Validation "Stop conditions" Output
done

for file in "${stacks[@]}"; do
  require_file "$file"
  require_sections "$file" "Detection signals" "Common project files" "Commands to discover" "Architecture signals" "Testing signals" "Documentation signals" Rules "Common risks" "Validation checklist"
done

require_contains kit/prompts/install-in-existing-project.md 'docs/claude/' "docs/claude output path"
require_contains kit/prompts/install-in-empty-project.md 'docs/claude/' "docs/claude output path"
require_contains kit/prompts/install-in-existing-project.md 'Do not implement features' "no feature implementation constraint"
require_contains kit/prompts/install-in-empty-project.md 'Do not create application code' "no application code constraint"
require_contains kit/prompts/install-in-existing-project.md 'Delete `\.claude-workflow-kit/` only after explicit user confirmation' "cleanup confirmation"
require_contains kit/prompts/install-in-empty-project.md 'Delete `\.claude-workflow-kit/` only after explicit user confirmation' "cleanup confirmation"
require_contains kit/base/CLAUDE.md 'not add an OpenClaude co-author trailer' "no OpenClaude commit trailer"
require_contains kit/commands/commit.md 'Do not add an OpenClaude co-author trailer' "no OpenClaude commit trailer"

check_shell_syntax scripts/install.sh
check_shell_syntax scripts/build-zip.sh
check_shell_syntax scripts/validate-kit.sh

if (( failures > 0 )); then
  echo "Validation failed with ${failures} issue(s)." >&2
  exit 1
fi

echo "Validation passed."
