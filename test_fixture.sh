#!/usr/bin/env bash
set -euo pipefail
VALUE=$(grep -o '[0-9]*' fixture.txt)
if [ "$VALUE" -gt 0 ]; then
  echo "PASS: fixture counter is $VALUE"
  exit 0
else
  echo "FAIL: fixture counter is still 0"
  exit 1
fi
