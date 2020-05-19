ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

ZSH_DISABLE_COMPFIX=true

alias f="fzf --preview 'head -100 {}' --bind 'enter:execute(vim {})+abort'"
alias edit="nvim ~/.zshrc"
alias reload="source ~/.zshrc"
