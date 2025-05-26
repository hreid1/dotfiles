#!/bin/bash

echo "Linking dotfiles..."

CONFIGS=(
  hypr
  kitty
  nvim
  thunar
  waybar
  xfce4
  yay
)

# Ensure .config exists
mkdir -p ~/.config

# Symlink all folders under config/
for config in "${CONFIGS[@]}"; do
  echo "Linking $config..."
  ln -sf "$HOME/dotfiles/config/$config" "$HOME/.config/$config"
done

# Starship config
echo "Linking starship.toml..."
ln -sf "$HOME/dotfiles/starship.toml" "$HOME/.config/starship.toml"

echo "Dotfiles linked successfully!"
