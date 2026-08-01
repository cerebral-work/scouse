#!/usr/bin/env bash
# scouse installer — pits the skill an the /scouse command whaur Claude Code
# can find them. Nae curl-pipe shenanigans: clone the repo, keek at the
# script, syne run it. (Ye should aye read a script afore ye run it.)
set -euo pipefail

usage() {
  cat <<'EOF'
usage: ./install.sh [--global | --project] [--uninstall]

  --global    install for ilka project   (~/.claude/)          [default]
  --project   install for this project   (./.claude/)
  --uninstall tak it aw back oot again
EOF
  exit 1
}

SCOPE="global"
UNINSTALL=0
for arg in "$@"; do
  case "$arg" in
    --global) SCOPE="global" ;;
    --project) SCOPE="project" ;;
    --uninstall) UNINSTALL=1 ;;
    -h|--help|*) usage ;;
  esac
done

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ "$SCOPE" = "global" ]; then
  DEST="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
else
  DEST="$(pwd)/.claude"
fi

if [ "$UNINSTALL" = "1" ]; then
  rm -rf "$DEST/skills/scouse"
  rm -f "$DEST/commands/scouse.md"
  echo "scouse is awa. Back tae the Suddron wi ye."
  exit 0
fi

mkdir -p "$DEST/skills/scouse" "$DEST/commands"
cp -r "$SRC/skills/scouse/." "$DEST/skills/scouse/"
cp "$SRC/commands/scouse.md" "$DEST/commands/scouse.md"

echo "Sortit. Installed tae: $DEST"
echo "  skill:   $DEST/skills/scouse/"
echo "  command: $DEST/commands/scouse.md"
echo
echo "Stert a new Claude Code session an gie it a /scouse. Nae bother."
