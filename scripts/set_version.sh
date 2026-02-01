#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <cargo_toml_path> <version>" >&2
  exit 1
fi

cargo_toml="$1"
version="$2"

if [ ! -f "$cargo_toml" ]; then
  echo "file not found: $cargo_toml" >&2
  exit 1
fi

# Update only the package version line in Cargo.toml.
awk -v ver="$version" '
  BEGIN { in_package = 0; updated = 0 }
  { sub(/\r$/, "") }
  /^[[:space:]]*\[package\][[:space:]]*$/ { in_package = 1; print; next }
  /^[[:space:]]*\[package\][[:space:]]*#/ { in_package = 1; print; next }
  /^[[:space:]]*\[[^]]+\][[:space:]]*$/ { in_package = 0; print; next }
  /^[[:space:]]*\[[^]]+\][[:space:]]*#/ { in_package = 0; print; next }
  in_package && /^[[:space:]]*version[[:space:]]*=/ {
    print "version = \"" ver "\""
    updated = 1
    next
  }
  { print }
  END {
    if (!updated) {
      exit 2
    }
  }
' "$cargo_toml" > "${cargo_toml}.tmp"

mv "${cargo_toml}.tmp" "$cargo_toml"
