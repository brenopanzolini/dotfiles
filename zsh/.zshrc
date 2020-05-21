# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=emacs
export DOTFILES_DIR="$HOME/.dotfiles"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

[[ -s ~/.zsh_aliases ]] && source ~/.zsh_aliases
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ASDF
. $(brew --prefix asdf)/asdf.sh
