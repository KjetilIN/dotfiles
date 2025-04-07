#!/bin/bash

# Install Neovim if not installed
if ! command -v nvim &>/dev/null; then
  echo "Neovim not found, installing..."
  sudo apt update
  sudo apt install -y neovim
else
  echo "Neovim is already installed."
fi

# Check if the directory exists, if not create it
if [ ! -d ~/.config/nvim ]; then
  echo "Creating Neovim config directory..."
  mkdir -p ~/.config/nvim
fi

# Symlink Neovim config files
echo "Setting up Neovim configuration..."
ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim