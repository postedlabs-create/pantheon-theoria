#!/bin/bash
# Pantheon Theoria — Bootstrap Script
# Runs on every Railway boot via server.js bootstrap hook
# Syncs scaffold from GitHub, sets up multi-agent workspaces, patches gateway
set -e

WORKSPACE="/data/workspace"
TMP_DIR="/tmp/pantheon-scaffold"
TOKEN="${GITHUB_TOKEN:-}"
REPO="postedlabs-create/pantheon-theoria"
SHARED_VAULT="/data/shared-vault"
SHARED_MEMORY="/data/shared-memory"
STATE_DIR="/data/.openclaw"
AUTH_SRC="$STATE_DIR/agents/main/agent/auth-profiles.json"

ALL_AGENTS="arbiter athena hermes argus calliope"

# ─── Step 1: Pull scaffold from GitHub ────────────────────────────
if [ -z "$TOKEN" ]; then
  echo "[bootstrap] GITHUB_TOKEN not set — skipping scaffold sync"
else
  REPO_URL="https://x-access-token:${TOKEN}@github.com/${REPO}.git"
  echo "[bootstrap] Pulling scaffold from GitHub..."
  rm -rf "$TMP_DIR"
  git clone --depth 1 "$REPO_URL" "$TMP_DIR"
  rm -rf "$TMP_DIR/.git"

  # Remove sensitive files from clone — they live on persistent volume only
  rm -rf "$TMP_DIR/vault/06_system/OPERATORS"

  # Copy scaffold into main workspace (backward compat)
  cp -r "$TMP_DIR"/. "$WORKSPACE/"

  echo "[bootstrap] Scaffold sync complete."
fi

# ─── Step 2: Shared vault ────────────────────────────────────────
echo "[bootstrap] Setting up shared vault..."
mkdir -p "$SHARED_VAULT/06_system" "$SHARED_MEMORY"

for DIR in STANDARDS WORLD PROJECTS OPERATORS; do
  if [ -d "$WORKSPACE/vault/06_system/$DIR" ] && [ ! -L "$WORKSPACE/vault/06_system/$DIR" ]; then
    rm -rf "$SHARED_VAULT/06_system/$DIR"
    cp -r "$WORKSPACE/vault/06_system/$DIR" "$SHARED_VAULT/06_system/$DIR"
  fi
done

# ─── Step 3: Agent workspaces ────────────────────────────────────
for AGENT in $ALL_AGENTS; do
  WS="/data/workspace-${AGENT}"
  mkdir -p "$WS/vault/06_system" "$WS/memory" "$WS/scripts"

  # Symlink shared vault
  for DIR in STANDARDS WORLD PROJECTS OPERATORS; do
    if [ -d "$SHARED_VAULT/06_system/$DIR" ]; then
      rm -rf "$WS/vault/06_system/$DIR"
      ln -sf "$SHARED_VAULT/06_system/$DIR" "$WS/vault/06_system/$DIR"
    fi
  done

  # Shared division memory (all agents can read/write)
  [ ! -L "$WS/division-memory" ] && ln -sf "$SHARED_MEMORY" "$WS/division-memory"

  # Copy agent-specific scaffold files (if they exist in main workspace)
  if [ -d "$WORKSPACE/$AGENT" ]; then
    cp -r "$WORKSPACE/$AGENT"/. "$WS/" 2>/dev/null || true
  fi

  # Shared scaffold files every agent needs
  for f in BOOTSTRAP.md HEARTBEAT.md TOOLS.md; do
    [ -f "$WORKSPACE/$f" ] && cp "$WORKSPACE/$f" "$WS/$f"
  done

  # Auth profile
  AGENT_STATE="$STATE_DIR/agents/${AGENT}/agent"
  AGENT_SESSIONS="$STATE_DIR/agents/${AGENT}/sessions"
  mkdir -p "$AGENT_STATE" "$AGENT_SESSIONS"
  [ -f "$AUTH_SRC" ] && cp "$AUTH_SRC" "$AGENT_STATE/auth-profiles.json"
done

# ─── Step 4: Patch gateway token injection bug ───────────────────
SERVER_JS="/app/src/server.js"
if grep -q 'if (!req?.headers?.authorization && OPENCLAW_GATEWAY_TOKEN)' "$SERVER_JS" 2>/dev/null; then
  sed -i 's/if (!req?.headers?.authorization && OPENCLAW_GATEWAY_TOKEN)/if (OPENCLAW_GATEWAY_TOKEN)/' "$SERVER_JS"
  echo "[bootstrap] Patched gateway token injection in server.js"
fi

# ─── Step 5: Inject agent-switcher into Control UI ───────────────
CONTROL_UI="/openclaw/dist/control-ui"
SWITCHER_SRC="/data/workspace/agent-switcher.js"
if [ -f "$SWITCHER_SRC" ] && [ -d "$CONTROL_UI" ]; then
  cp "$SWITCHER_SRC" "$CONTROL_UI/agent-switcher.js"
  if ! grep -q 'agent-switcher.js' "$CONTROL_UI/index.html" 2>/dev/null; then
    sed -i 's|</body>|<script src="./agent-switcher.js"></script></body>|' "$CONTROL_UI/index.html"
  fi
  echo "[bootstrap] Injected agent-switcher into Control UI"
fi

echo "[bootstrap] All agent workspaces ready."
echo "[bootstrap] Done."
