#!/usr/bin/env bash
#
# sync-skill.sh — push a repo-vendored skill out to the live Claude install
# and rebuild its shareable .skill bundle.
#
# The repo copy (skills/<name>/) is the master. This script copies it into the
# active Claude skills directory and zips a fresh bundle into ~/Downloads.
#
# Usage:
#   ./skills/sync-skill.sh                          # syncs sweat440-paid-ad-review
#   ./skills/sync-skill.sh <skill-folder-name>      # syncs a different skill
#
set -euo pipefail

SKILL="${1:-sweat440-paid-ad-review}"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"   # the skills/ dir
MASTER="$REPO_DIR/$SKILL"
BUNDLE="$HOME/Downloads/$SKILL.skill"

if [ ! -d "$MASTER" ]; then
  echo "ERROR: master copy not found: $MASTER" >&2
  exit 1
fi

# The Claude install path contains session UUIDs that change between versions,
# so discover it by glob rather than hardcoding.
INSTALL_BASE="$HOME/Library/Application Support/Claude/local-agent-mode-sessions/skills-plugin"
FOUND=0
while IFS= read -r T; do
  [ -z "$T" ] && continue
  FOUND=1
  rm -rf "$T"
  mkdir -p "$(dirname "$T")"
  cp -R "$MASTER" "$T"
  echo "Synced -> $T"
done < <(find "$INSTALL_BASE" -type d -name "$SKILL" 2>/dev/null || true)

if [ "$FOUND" -eq 0 ]; then
  echo "WARNING: no live install of '$SKILL' found under:"
  echo "  $INSTALL_BASE"
  echo "Skipping install sync (bundle will still be rebuilt)."
fi

# Rebuild the shareable .skill bundle (a zip of the skill folder).
TMP="$(mktemp -d)"
cp -R "$MASTER" "$TMP/$SKILL"
( cd "$TMP" && rm -f "$BUNDLE" && zip -q -r "$BUNDLE" "$SKILL" )
rm -rf "$TMP"
echo "Bundle  -> $BUNDLE"

echo
echo "Done. Restart any open Claude session so it reloads the skill files."
