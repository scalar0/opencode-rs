#!/usr/bin/env bash
set -euo pipefail

repo="${1:-anomalyco/opencode}"

if ! command -v gh >/dev/null 2>&1; then
  echo "gh CLI is required" >&2
  exit 1
fi

# Fetch tags and filter strictly to vM.m.p
mapfile -t tags < <(gh api "repos/${repo}/tags" --paginate --jq '.[].name' | grep -E '^v[0-9]+\.[0-9]+\.[0-9]+$' || true)

if [ "${#tags[@]}" -eq 0 ]; then
  echo "no semantic version tags found" >&2
  exit 1
fi

# Sort by semver and pick the latest
latest=$(printf '%s\n' "${tags[@]}" | sed 's/^v//' | sort -V | tail -n 1)

echo "v${latest}"
