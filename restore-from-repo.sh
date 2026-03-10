#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/.config
cp -r "$REPO_DIR/config/"* ~/.config/ 2>/dev/null || true

mkdir -p ~/.themes
cp -r "$REPO_DIR/themes/"* ~/.themes/ 2>/dev/null || true

mkdir -p ~/.local/bin
cp -r "$REPO_DIR/bin/"* ~/.local/bin/ 2>/dev/null || true
chmod +x ~/.local/bin/backup-gnome ~/.local/bin/restore-gnome 2>/dev/null || true

if [ -f "$REPO_DIR/dconf/org-gnome.ini" ]; then
  dconf load /org/gnome/ < "$REPO_DIR/dconf/org-gnome.ini" 2>/dev/null || true
fi

if [ -f "$REPO_DIR/dconf/org-gtk.ini" ]; then
  dconf load /org/gtk/ < "$REPO_DIR/dconf/org-gtk.ini" 2>/dev/null || true
fi

if [ -f "$REPO_DIR/dconf/gnome-shell-extensions.ini" ]; then
  dconf load /org/gnome/shell/extensions/ < "$REPO_DIR/dconf/gnome-shell-extensions.ini" 2>/dev/null || true
fi

echo "Restore finished. Log out and back in."
