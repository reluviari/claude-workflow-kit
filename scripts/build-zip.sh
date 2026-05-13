#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ZIP_DIR="$ROOT_DIR/zip"
ZIP_FILE="$ZIP_DIR/claude-workflow-kit.zip"

mkdir -p "$ZIP_DIR"
rm -f "$ZIP_FILE"

cd "$ROOT_DIR"

zip -r "$ZIP_FILE" \
  README.md \
  LICENSE \
  CHANGELOG.md \
  kit \
  examples \
  scripts \
  -x "zip/*" \
  -x ".git/*" \
  -x ".DS_Store"

echo "Generated: $ZIP_FILE"
