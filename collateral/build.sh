#!/bin/sh
# Render collateral HTML to PDF with headless Chrome.
# Usage: sh collateral/build.sh   (from the repo root or anywhere)
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
OUT="$DIR/../assets/pdf"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
mkdir -p "$OUT"

render() {
  "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 \
    --print-to-pdf="$OUT/$2" "file://$DIR/$1" 2>/dev/null
  echo "built assets/pdf/$2"
}

render playbook.html  orphaned-software-playbook.pdf
render scorecard.html software-estate-risk-scorecard.pdf
render overview.html  managed-software-services-overview.pdf
render checklist.html production-readiness-checklist.pdf
