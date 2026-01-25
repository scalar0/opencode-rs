#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <config_path> <version>" >&2
  exit 1
fi

config_path="$1"
version="$2"

if [ ! -f "$config_path" ]; then
  echo "config file not found: $config_path" >&2
  exit 1
fi

# Update only the first packageVersion field in JSON.
awk -v ver="$version" '
  BEGIN { updated = 0 }
  /^[[:space:]]*"packageVersion"[[:space:]]*:/ {
    if (!updated) {
      print "  \"packageVersion\": \"" ver "\","
      updated = 1
      next
    }
  }
  { print }
  END {
    if (!updated) {
      exit 2
    }
  }
' "$config_path" > "${config_path}.tmp"

mv "${config_path}.tmp" "$config_path"
