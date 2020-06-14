;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

;; general mappings
(map!
 :n "-" #'dired-jump
 :nvi "<f10>" #'doom/window-maximize-buffer)

;; paredit
(after! paredit
  (map!
   :nvi "M-<left>" #'paredit-forward-barf-sexp
   :nvi "M-<right>" #'paredit-forward-slurp-sexp
   :nvi "C-c <left>" #'paredit-backward
   :nvi "C-c <right>" #'paredit-forward))

;; clojure
(after! clojure-mode
  (map!
   (:map clojure-mode-map
    (:n "R" #'hydra-cljr-help-menu/body)
    (:localleader
     ("a" #'clojure-align)
     (:prefix ("e" . "eval")
      "d" #'cider-read-and-eval-defun-at-point
      "f" #'cider-eval-defun-at-point
      "n" #'cider-eval-ns-form)
     (:prefix ("n" . "namespace")
      "R" #'cider-ns-reload-all)
     (:prefix ("t" . "test")
      "N" #'user/cider-eval-and-run-ns-tests)
     (:prefix ("r" . "repl")
      "j" #'cider-jack-in
      "i" #'cider-interrupt)))))
