plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

alias f="fzf --preview 'head -100 {}' --bind 'enter:execute(vim {})+abort'"
alias edit="nvim ~/.zshrc"
alias reload="source ~/.zshrc"
