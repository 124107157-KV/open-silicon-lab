#!/usr/bin/env bash
set -e

TECH_FILE="$HOME/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech"
MAGICRC_FILE="$HOME/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.magicrc"

echo "Checking Magic/SKY130 environment..."

if command -v magic >/dev/null 2>&1; then
    echo "Magic found: $(which magic)"
else
    echo "ERROR: Magic not found in PATH"
    exit 1
fi

if [ -f "$TECH_FILE" ]; then
    echo "SKY130 Magic tech file found:"
    echo "$TECH_FILE"
else
    echo "ERROR: SKY130 Magic tech file not found:"
    echo "$TECH_FILE"
    exit 1
fi

if [ -f "$MAGICRC_FILE" ]; then
    echo "SKY130 Magic rc file found:"
    echo "$MAGICRC_FILE"
else
    echo "Warning: SKY130 Magic rc file not found:"
    echo "$MAGICRC_FILE"
fi

echo "Environment check complete."
