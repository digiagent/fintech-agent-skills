#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="$ROOT_DIR/skills"
FAILED=0

fail() {
  echo "  ERROR: $1"
  FAILED=1
}

require_text() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if ! grep -qiE "$pattern" "$file"; then
    fail "missing required section or text: $label"
  fi
}

require_directory_with_markdown() {
  local directory="$1"
  local label="$2"

  if [[ ! -d "$directory" ]]; then
    fail "missing $label directory: $directory"
    return
  fi

  if ! find "$directory" -maxdepth 1 -type f -name '*.md' | grep -q .; then
    fail "$label directory has no Markdown files: $directory"
  fi
}

if [[ ! -d "$SKILLS_DIR" ]]; then
  echo "ERROR: skills directory does not exist: $SKILLS_DIR"
  exit 1
fi

for skill_dir in "$SKILLS_DIR"/*; do
  [[ -d "$skill_dir" ]] || continue

  skill_name="$(basename "$skill_dir")"
  skill_file="$skill_dir/SKILL.md"
  eval_file="$skill_dir/evals/cases.json"

  echo "Checking: $skill_name"

  if [[ ! "$skill_name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    fail "directory name must be kebab-case"
  fi

  if [[ ! -f "$skill_file" ]]; then
    fail "missing SKILL.md"
    continue
  fi

  if [[ "$(head -n 1 "$skill_file")" != "---" ]]; then
    fail "SKILL.md must begin with YAML frontmatter delimiter"
  fi

  if ! grep -q "^name: $skill_name$" "$skill_file"; then
    fail "frontmatter name must exactly match directory name"
  fi

  if ! grep -q "^description:" "$skill_file"; then
    fail "frontmatter description is missing"
  fi

  if ! grep -q "^# " "$skill_file"; then
    fail "SKILL.md needs an H1 title"
  fi

  if grep -nE 'EOF[a-zA-Z]|^EOF$' "$skill_file" >/dev/null; then
    fail "possible heredoc EOF artifact found in SKILL.md"
  fi

  require_text "$skill_file" "^## Purpose" "Purpose"
  require_text "$skill_file" "^## .*Workflow" "Workflow"
  require_text "$skill_file" "^## .*Output format" "Output format"
  require_text "$skill_file" "^## .*Quality rules" "Quality rules"

  require_directory_with_markdown "$skill_dir/references" "references"
  require_directory_with_markdown "$skill_dir/assets" "assets"

  if [[ ! -f "$skill_dir/evals/rubric.md" ]]; then
    fail "missing evals/rubric.md"
  fi

  if [[ ! -f "$eval_file" ]]; then
    fail "missing evals/cases.json"
  elif ! python3 -m json.tool "$eval_file" >/dev/null; then
    fail "invalid JSON in evals/cases.json"
  else
    case_count="$(
      python3 - "$eval_file" <<'PY'
import json
import sys

with open(sys.argv[1], encoding="utf-8") as f:
    cases = json.load(f)

print(len(cases) if isinstance(cases, list) else 0)
PY
    )"

    if [[ "$case_count" -lt 5 ]]; then
      fail "evals/cases.json must contain at least 5 cases; found $case_count"
    fi
  fi

  echo "  OK"
done

if [[ "$FAILED" -ne 0 ]]; then
  echo "Validation failed."
  exit 1
fi

echo "All skills passed repository validation."
