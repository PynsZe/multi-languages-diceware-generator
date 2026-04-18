#!/usr/bin/env sh
# Downloads the canonical text of every third-party license referenced
# in NOTICES.md into the ./licenses/ directory.
#
# Run from the project root:
#     sh scripts/fetch-licenses.sh

set -e

cd "$(dirname "$0")/.."
mkdir -p licenses

echo "Downloading GPL-3.0..."
curl -fsSL -o licenses/GPL-3.0.txt       https://www.gnu.org/licenses/gpl-3.0.txt

echo "Downloading GFDL-1.3..."
curl -fsSL -o licenses/GFDL-1.3.txt      https://www.gnu.org/licenses/fdl-1.3.txt

echo "Downloading CC-BY-3.0..."
curl -fsSL -o licenses/CC-BY-3.0.txt     https://creativecommons.org/licenses/by/3.0/legalcode.txt

echo "Downloading CC-BY-SA-4.0..."
curl -fsSL -o licenses/CC-BY-SA-4.0.txt  https://creativecommons.org/licenses/by-sa/4.0/legalcode.txt

echo ""
echo "Done. All license texts are in ./licenses/"
ls -1 licenses/
