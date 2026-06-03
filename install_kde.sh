#!/usr/bin/env bash

echo "--- Installing KDE Plasma and TigerVNC ---"

# 1. Ensure repositories are up to date
pkg update && pkg upgrade -y

# 2. Install essential repositories and packages
pkg install -y root-repo x11-repo tur-repo
pkg update

# 3. Install KDE and VNC components
echo "Installing KDE Plasma, Applications, and TigerVNC..."
pkg install -y oxygen oxygen-sounds kde-applications plasma plasma-desktop tigervnc

echo "--------------------------------------------------------"
echo "Installation process finished successfully."
echo "--------------------------------------------------------"

