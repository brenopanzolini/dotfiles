;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; to open emacs maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; add emoji support
(add-hook! 'after-init-hook #'global-emojify-mode)

;; increase history-length
(setq history-length 300)

;; disable confirmation message on exit
(setq confirm-kill-emacs nil)

;; evil
(setq evil-split-window-below t
      evil-vsplit-window-right t)

;; doom fonts
(setq  doom-font (font-spec :family "Hack" :size 18)
       doom-big-font-increment 2)

;; doom themes
(setq  doom-theme 'doom-monokai-pro
       doom-themes-treemacs-theme "Default")

;; display-line-numbers
(setq display-line-numbers-type t)

;; set localleader the same as Spacemacs
(setq doom-localleader-key ",")

;; format on-save
(setq +format-on-save-enabled-modes t)

;; projectile
(setq projectile-project-search-path '("~/Projects/"))

;; dired
(add-hook! dired-mode
           ;; Auto refresh buffers
           (global-auto-revert-mode t)

           ;; Also auto refresh dired, but be quiet about it
           (setq global-auto-revert-non-file-buffers t)
           (setq auto-revert-verbose nil))

;; aggressive indent
(use-package! aggressive-indent
  :hook
  (clojure-mode . aggressive-indent-mode)
  (emacs-lisp-mode . aggressive-indent-mode)
  (lisp-mode . aggressive-indent-mode))

;; paredit
(use-package! paredit
  :hook
  (clojure-mode . paredit-mode)
  (emacs-lisp-mode . paredit-mode)
  (lisp-mode . paredit-mode))

;; clojure
(add-to-list 'auto-mode-alist '("\\.repl\\'" . clojure-mode))

(after! cider
  (set-popup-rule! "^\\*cider-repl" :side 'right :size 0.4))

(use-package! clojure-mode
  :config
  (setq cider-show-error-buffer 'only-in-repl
        clojure-indent-style 'always-align
        clojure-align-forms-automatically t
        clj-refactor-mode 1
        yas-minor-mode 1)) ; for adding require/use/import statements

(use-package! clj-refactor
  :after clojure-mode
  :config
  (setq cljr-warn-on-eval nil
        clojure-thread-all-but-last t
        cljr-clojure-test-declaration "[clojure.test :refer :all]"
        cljr-magic-require-namespaces
        '(("gen" . "common-test.generators")
          ("io" . "clojure.java.io")
          ("m" . "matcher-combinators.matchers")
          ("pp" . "clojure.pprint")
          ("s" . "schema.core")
          ("set" . "clojure.set")
          ("str" . "clojure.string"))))

;; javascript
(add-hook! js2-mode

           ;; Change tab offset
           (setq js2-basic-offset 2))

(add-hook! json-mode

           ;; Change tab offset
           (setq js-indent-level 2))

;; company
(use-package! company
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.15
        company-tooltip-align-annotations t
        company-show-numbers t))

;; lsp
(use-package! lsp-mode
  :commands lsp
  :hook ((clojure-mode . lsp)
         (go-mode . lsp)
         (js2-mode . lsp))
  :init
  (setq lsp-log-io nil
        lsp-semantic-highlighting :immediate)
  :config
  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode))
    (add-to-list 'lsp-language-id-configuration `(,m . "clojure")))
  (advice-add #'lsp-rename :after (lambda (&rest _) (projectile-save-project-buffers))))

(use-package! lsp-ui
  :after lsp-mode
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-peek-list-width 60
        lsp-ui-peek-fontify 'always))

(use-package! lsp-treemacs
  :after lsp-mode
  :config
  (lsp-treemacs-sync-mode 1))

;; grip
(use-package! grip-mode
  :config
  (setq grip-update-after-change nil))

;; load custom bindings
(load! "+bindings")
