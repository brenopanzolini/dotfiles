;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; (package! aggressive-indent :disable t)
(package! cider)
(package! clj-refactor)
;; (package! emojify)
(package! flycheck-clojure)
(package! lsp-mode)
(package! lsp-ui)
(package! lsp-treemacs)
(package! magit-todos)
(package! paredit)
(package! posframe)
(package! sort-words)
(package! treemacs-all-the-icons)

(unpin! doom-modeline)
(unpin! lsp-mode)
(unpin! lsp-ui)
(unpin! lsp-treemacs)
(unpin! treemacs)
