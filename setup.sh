#!/usr/bin/env bash
set -euo pipefail

echo "Setup git"
cp git/.gitconfig ~/.gitconfig

echo "Setup emacs"
cp -a emacs/.doom.d/ ~/.doom.d

echo "Setup zsh"
cp zsh/.zshrc ~/.zshrc
cp zsh/.zsh_aliases ~/.zsh_aliases
cp zsh/.p10k.zsh ~/.p10k.zsh

echo -e "\nFinished!"
