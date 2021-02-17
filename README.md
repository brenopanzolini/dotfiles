# Dotfiles

My dotfiles.

## Install

- [hack font](https://sourcefoundry.org/hack/)
- [httpie](https://httpie.org/)
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [asdf](https://asdf-vm.com/#/core-manage-asdf-vm)
- [grip](https://github.com/joeyespo/grip#installation)
- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x)
- [emacs](https://www.gnu.org/software/emacs/)
- [doom emacs](https://github.com/hlissner/doom-emacs#install)
- [clojure-lsp](https://clojure-lsp.github.io/clojure-lsp/installation/)

## ZSH Plugins

```sh
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

$ git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Setup

Before continuing, ensure that you have all fonts _(we also need the `Powerlevel10k` font)_ and packages installed.

1. Setup

```sh
$ git clone git@github.com:brenopanzolini/dotfiles.git "$HOME/.dotfiles"
$ cd ~/.dotfiles
$ ./setup.sh
```

2. Manually update `~/.npmrc` with your correct personal GitHub access token
