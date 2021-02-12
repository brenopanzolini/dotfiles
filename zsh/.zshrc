# Export
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export DOTFILES_DIR="$HOME/.dotfiles"
export GPG_TTY=$(tty)

export LC_ALL=en_US.UTF-8
export PINENTRY_USER_DATA="USE_CURSES=1"

export PATH="/usr/local/opt/python@3.8/libexec/bin:$PATH" # For python3
export PATH="/Applications/CMake.app/Contents/bin:$PATH" # For CMake

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
source $HOME/.nurc
[[ -s ~/.zsh_aliases ]] && source ~/.zsh_aliases
[[ -s ~/.p10k.zsh ]] && source ~/.p10k.zsh
