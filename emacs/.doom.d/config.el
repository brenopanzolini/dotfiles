;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq
 history-length 300
 left-fringe-width 16
 indent-tabs-mode nil
 confirm-kill-emacs nil
 mode-line-default-help-echo nil
 compilation-scroll-output 'first-error

 projectile-project-search-path '("~/projects/")

 evil-split-window-below t
 evil-vsplit-window-right t
 evil-collection-setup-minibuffer t

 user-full-name "Breno Panzolini"
 user-mail-address "bpanzolini@gmail.com"

 doom-font (font-spec :family "Hack" :size 16)
 doom-big-font-increment 2

 doom-theme 'doom-molokai
 doom-themes-treemacs-theme "Default"

 display-line-numbers-type t)

(use-package! company
  :config
  (setq company-minimum-prefix-length 3
        company-tooltip-align-annotations t
        company-show-numbers t))

(use-package! lsp-mode
  :commands lsp
  :hook ((go-mode . lsp))
  :init
  (setq lsp-log-io nil
        lsp-semantic-highlighting :immediate))

(use-package! lsp-ui
  :after lsp-mode
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-peek-list-width 60
        lsp-ui-peek-fontify 'always))

(use-package lsp-treemacs
  :after lsp-mode
  :config
  (lsp-treemacs-sync-mode 1))
