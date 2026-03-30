#!/bin/bash
# new-agent.sh — Scaffold a new Theoria Division agent
#
# Usage:
#   ./scripts/new-agent.sh <folder-name> "<Display Name>" "<Role Title>"
#
# Example:
#   ./scripts/new-agent.sh clio "Clio" "Content Strategist"
#
# Creates:
#   workspace/<folder-name>/PANTHEON_POINTER.md
#   workspace/<folder-name>/<DisplayName>.md (identity file)

set -euo pipefail

WORKSPACE="$(cd "$(dirname "$0")/.." && pwd)"
SCAFFOLD_DIR="$WORKSPACE/vault/06_system/STANDARDS/AGENT_SCAFFOLD"

if [ $# -lt 3 ]; then
    echo "Usage: $0 <folder-name> \"<Display Name>\" \"<Role Title>\""
    echo "Example: $0 clio \"Clio\" \"Content Strategist\""
    exit 1
fi

FOLDER_NAME="$1"
DISPLAY_NAME="$2"
ROLE_TITLE="$3"
AGENT_DIR="$WORKSPACE/$FOLDER_NAME"
TODAY=$(date +%Y-%m-%d)

# Safety check
if [ -d "$AGENT_DIR" ]; then
    echo "ERROR: $AGENT_DIR already exists. Aborting."
    exit 1
fi

# Create agent folder
mkdir -p "$AGENT_DIR"
echo "Created: $AGENT_DIR/"

# Copy and fill PANTHEON_POINTER
sed "s/{{AGENT_NAME}}/$DISPLAY_NAME/g" \
    "$SCAFFOLD_DIR/PANTHEON_POINTER.template.md" \
    > "$AGENT_DIR/PANTHEON_POINTER.md"
echo "Created: $AGENT_DIR/PANTHEON_POINTER.md"

# Copy and fill identity file
UPPER_NAME=$(echo "$DISPLAY_NAME" | tr '[:lower:]' '[:upper:]')
sed -e "s/{{AGENT_NAME}}/$DISPLAY_NAME/g" \
    -e "s/{{AGENT_ROLE}}/$ROLE_TITLE/g" \
    -e "s/{{REPORTS_TO}}/{{REPORTS_TO — fill in}}/g" \
    -e "s/{{LAYER}}/{{LAYER — fill in}}/g" \
    -e "s/{{MISSION.*}}/{{MISSION — fill in}}/g" \
    -e "s/{{DATE}}/$TODAY/g" \
    "$SCAFFOLD_DIR/IDENTITY.template.md" \
    > "$AGENT_DIR/$UPPER_NAME.md"
echo "Created: $AGENT_DIR/$UPPER_NAME.md"

echo ""
echo "Agent '$DISPLAY_NAME' scaffolded at $AGENT_DIR/"
echo ""
echo "Next steps:"
echo "  1. Fill in placeholders in $UPPER_NAME.md (REPORTS_TO, LAYER, MISSION, Does/Does Not)"
echo "  2. Create report standards in vault/06_system/STANDARDS/REPORT_STANDARDS/$UPPER_NAME/ (if needed)"
echo "  3. Update vault/06_system/STANDARDS/REPORT_STANDARDS/INDEX.md"
echo "  4. Update vault/06_system/WORLD/THEORIA_DIVISION.md"
echo "  5. Update hermes/AGENT_PROFILES.md"
echo "  6. Update arbiter/DIVISION_STRUCTURE.md"
