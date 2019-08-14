plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

alias f="fzf --preview 'head -100 {}' --bind 'enter:execute(nvim {})+abort'"
alias edit="nvim ~/.zshrc"
alias reload="source ~/.zshrc"
alias vim="nvim"
alias vi="nvim"
