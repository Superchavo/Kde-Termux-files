#!/usr/bin/env bash

# Configuration
FONT_DIR="$HOME/.termux"
FONT_FILE="font.ttf"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf"

echo "--- Installing Fira Code Nerd Font ---"

# Create directory
mkdir -p "$FONT_DIR"

# Download the file
# We use curl with silent mode but show progress
if curl -fL# -o "$FONT_DIR/$FONT_FILE" "$FONT_URL"; then
    echo -e "\nSuccessfully installed to $FONT_DIR/$FONT_FILE"
    
    # Reload Termux settings
    # This command exists in the Termux environment regardless of current shell
    if command -v termux-reload-settings >/dev/null 2>&1; then
        termux-reload-settings
        echo "Settings reloaded."
    else
        echo "Warning: termux-reload-settings command not found. Please restart Termux."
    fi
else
    echo -e "\nError: Download failed. Check your internet connection."
    exit 1
fi

