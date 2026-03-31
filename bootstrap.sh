#!/bin/bash
# Pantheon Theoria — Bootstrap Script
# Runs on every Railway boot via server.js bootstrap hook
# Syncs scaffold from GitHub into /data/workspace
# Sensitive files on Railway Persistent Volume are NOT touched

set -e

WORKSPACE="/data/workspace"
TMP_DIR="/tmp/pantheon-scaffold"
TOKEN="${GITHUB_TOKEN:-}"
REPO="postedlabs-create/pantheon-theoria"

if [ -z "$TOKEN" ]; then
  echo "[bootstrap] GITHUB_TOKEN not set — skipping scaffold sync"
  exit 0
fi

REPO_URL="https://x-access-token:${TOKEN}@github.com/${REPO}.git"

echo "[bootstrap] Starting scaffold sync from GitHub..."

# Clone repo to temp location
rm -rf "$TMP_DIR"
git clone --depth 1 "$REPO_URL" "$TMP_DIR"

# Remove .git from clone — we don't need repo metadata in workspace
rm -rf "$TMP_DIR/.git"

# Remove sensitive file paths from the clone so they can never overwrite
# what's already on the persistent volume
rm -f "$TMP_DIR/SOUL.md" "$TMP_DIR/IDENTITY.md" "$TMP_DIR/USER.md"
rm -rf "$TMP_DIR/vault/06_system/LUCIAN"
rm -rf "$TMP_DIR/vault/06_system/OPERATORS"
rm -rf "$TMP_DIR/memory"

# Copy scaffold into workspace — overwrites scaffold files with latest from GitHub
# Sensitive files were removed above so they're never touched
cp -r "$TMP_DIR"/. "$WORKSPACE/"

# Cleanup
rm -rf "$TMP_DIR"

# Fix server.js gateway token injection bug (survives until upstream fix)
# The wrapper only injects Bearer token when no Authorization header exists,
# but Basic auth from SETUP_PASSWORD is always present — so the token never gets injected
SERVER_JS="/app/src/server.js"
if grep -q 'if (!req?.headers?.authorization && OPENCLAW_GATEWAY_TOKEN)' "$SERVER_JS" 2>/dev/null; then
  sed -i 's/if (!req?.headers?.authorization && OPENCLAW_GATEWAY_TOKEN)/if (OPENCLAW_GATEWAY_TOKEN)/' "$SERVER_JS"
  echo "[bootstrap] Patched gateway token injection in server.js"
fi

echo "[bootstrap] Scaffold sync complete."
