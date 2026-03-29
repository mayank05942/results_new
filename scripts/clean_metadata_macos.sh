#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FIG_DIR="$ROOT_DIR/figures"
TAB_DIR="$ROOT_DIR/tables"

if ! command -v exiftool >/dev/null 2>&1; then
  echo "[error] exiftool is required. Install with: brew install exiftool"
  exit 1
fi

echo "[info] Cleaning metadata in figures and tables under: $ROOT_DIR"

if [ -d "$FIG_DIR" ]; then
  find "$FIG_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.pdf" \) -print0 |
    while IFS= read -r -d '' f; do
      exiftool -overwrite_original -all= "$f" >/dev/null
      touch -r "$f" "$f"
      echo "[cleaned] $f"
    done
fi

if [ -d "$TAB_DIR" ]; then
  find "$TAB_DIR" -type f \( -iname "*.csv" -o -iname "*.tsv" -o -iname "*.txt" \) -print0 |
    while IFS= read -r -d '' f; do
      perl -i -pe 's/\r$//' "$f"
      echo "[normalized] $f"
    done
fi

echo "[done] Metadata cleanup complete."
