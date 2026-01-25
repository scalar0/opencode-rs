#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 4 ]; then
  echo "usage: $0 <spec_url> <output_dir> <generator_image> <config_file>" >&2
  exit 1
fi

spec_url="$1"
output_dir="$2"
generator_image="$3"
config_file="$4"

if [ ! -f "$config_file" ]; then
  echo "config file not found: $config_file" >&2
  exit 1
fi

mkdir -p "$output_dir"

# Run OpenAPI Generator via Docker image.
docker run --rm \
  -v "${PWD}:/local" \
  "$generator_image" \
  generate \
  -i "$spec_url" \
  -g rust \
  -o "/local/${output_dir}" \
  -c "/local/${config_file}"
