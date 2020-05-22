# Export
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export DOTFILES_DIR="$HOME/.dotfiles"
export GPG_TTY=$(tty)

# ZSH
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX=true

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Sources
source $ZSH/oh-my-zsh.sh
[[ -s ~/.zsh_aliases ]] && source ~/.zsh_aliases
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ASDF
. $(brew --prefix asdf)/asdf.sh
