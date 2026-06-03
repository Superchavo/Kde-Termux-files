#!/usr/bin/env bash

# 1. Update packages and install fish
echo "Updating packages and installing fish..."
pkg update && pkg install -y fish

# 2. Set fish as the default shell
echo "Setting fish as your default shell..."
chsh -s fish

# 3. Inform the user and switch to fish immediately
echo "Setup complete. Launching fish shell now..."

# Replace the current bash process with fish
exec fish

