#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  install.sh existing
  install.sh empty

Examples:
  curl -fsSL https://raw.githubusercontent.com/reluviari/claude-workflow-kit/master/scripts/install.sh | bash -s -- existing
  curl -fsSL https://raw.githubusercontent.com/reluviari/claude-workflow-kit/master/scripts/install.sh | bash -s -- empty

This installer only copies Claude Workflow Kit assets and generates an installation prompt.
It does not create application code, install dependencies, or run Claude automatically.
USAGE
}

MODE="${1:-}"

if [[ "$MODE" != "existing" && "$MODE" != "empty" ]]; then
  usage
  exit 1
fi

TARGET_DIR="$(pwd)"
INSTALL_DIR="$TARGET_DIR/.claude-workflow-kit"
PROMPTS_DIR="$TARGET_DIR/prompts"
PROMPT_FILE="$PROMPTS_DIR/install-claude-workflow-kit.md"
TMP_DIR=""

cleanup() {
  if [[ -n "$TMP_DIR" && -d "$TMP_DIR" ]]; then
    rm -rf "$TMP_DIR"
  fi
}
trap cleanup EXIT

fail_if_exists() {
  local path="$1"
  if [[ -e "$path" ]]; then
    echo "Claude Workflow Kit installation already exists or would overwrite: $path" >&2
    echo "Remove it manually if you want to reinstall." >&2
    exit 1
  fi
}

copy_from_source() {
  local source_dir="$1"

  mkdir -p "$INSTALL_DIR"
  cp -R "$source_dir/kit" "$INSTALL_DIR/kit"
  cp "$source_dir/README.md" "$INSTALL_DIR/README.md"
  cp "$source_dir/LICENSE" "$INSTALL_DIR/LICENSE"
  cp "$source_dir/CHANGELOG.md" "$INSTALL_DIR/CHANGELOG.md"
}

install_from_local_repo() {
  local script_dir repo_dir
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  repo_dir="$(cd "$script_dir/.." && pwd)"

  if [[ -d "$repo_dir/kit" && -f "$repo_dir/README.md" ]]; then
    copy_from_source "$repo_dir"
    return 0
  fi

  return 1
}

install_from_github_archive() {
  local version archive_url archive_file source_dir
  version="${CWK_VERSION:-master}"
  archive_url="https://github.com/reluviari/claude-workflow-kit/archive/refs/heads/${version}.tar.gz"

  TMP_DIR="$(mktemp -d)"
  archive_file="$TMP_DIR/claude-workflow-kit.tar.gz"

  curl -fsSL "$archive_url" -o "$archive_file"
  tar -xzf "$archive_file" -C "$TMP_DIR"

  source_dir="$TMP_DIR/claude-workflow-kit-${version}"

  if [[ ! -d "$source_dir/kit" ]]; then
    echo "Could not locate Claude Workflow Kit files in downloaded archive." >&2
    exit 1
  fi

  copy_from_source "$source_dir"
}

generate_prompt() {
  local source_prompt mode_label

  if [[ "$MODE" == "existing" ]]; then
    source_prompt="$INSTALL_DIR/kit/prompts/install-in-existing-project.md"
    mode_label="existing project"
  else
    source_prompt="$INSTALL_DIR/kit/prompts/install-in-empty-project.md"
    mode_label="empty project"
  fi

  mkdir -p "$PROMPTS_DIR"

  cat > "$PROMPT_FILE" <<EOF
# Install Claude Workflow Kit

This prompt was generated for an ${mode_label}.

The Claude Workflow Kit source files are available in:

\`\`\`txt
.claude-workflow-kit/kit
\`\`\`

Use this prompt inside Claude Code from the root of the target project.
Claude must inspect this project and adapt the workspace before creating project-specific files.

---

EOF

  cat "$source_prompt" >> "$PROMPT_FILE"
}

fail_if_exists "$INSTALL_DIR"
fail_if_exists "$PROMPT_FILE"

if ! install_from_local_repo; then
  install_from_github_archive
fi

generate_prompt

cat <<EOF
Claude Workflow Kit installed.

Mode: $MODE
Target: $TARGET_DIR

Next step:
1. Run: claude
2. Paste the contents of: prompts/install-claude-workflow-kit.md

The installer did not modify application code, install dependencies, or run Claude automatically.
EOF
