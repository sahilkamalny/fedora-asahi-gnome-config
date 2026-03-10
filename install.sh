#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/sahilkamalny/fedora-asahi-gnome-config.git"
INSTALL_DIR="$HOME/fedora-asahi-gnome-config"

echo "Installing GNOME configuration..."

if [ ! -d "$INSTALL_DIR" ]; then
  git clone "$REPO_URL" "$INSTALL_DIR"
else
  echo "Repository already exists, pulling latest changes..."
  cd "$INSTALL_DIR"
  git pull
fi

cd "$INSTALL_DIR"

echo "Running restore script..."

bash restore-from-repo.sh

echo ""
echo "Installation complete."
echo "Log out and back in for all changes to apply."
