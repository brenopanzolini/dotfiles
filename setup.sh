#!/usr/bin/env bash
set -euo pipefail

# Variables
dotfiles_dir="$HOME/.dotfiles"

######### GIT #########
echo "Setup git"
ln -sf "$dotfiles_dir/git/.gitconfig" ~/.gitconfig
ln -sf "$dotfiles_dir/git/.gitignore_global" ~/.gitignore_global

######### NODE #########
echo "Setup Node.js"
cp "$dotfiles_dir/node/.npmrc" ~/.npmrc

######## EMACS ########
echo "Setup emacs"
ln -sf "$dotfiles_dir/emacs/.doom.d" ~/.doom.d
ln -sf "$dotfiles_dir/emacs/.lsp" ~/.lsp

######### ZSH #########
echo "Setup zsh"

ln -sf "$dotfiles_dir/zsh/.zshrc" ~/.zshrc
ln -sf "$dotfiles_dir/zsh/.zsh_aliases" ~/.zsh_aliases
ln -sf "$dotfiles_dir/zsh/.p10k.zsh" ~/.p10k.zsh

echo -e "\nFinished!"
