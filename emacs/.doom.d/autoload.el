;;; ~/.doom.d/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun user/cider-eval-and-run-ns-tests ()
  "Eval and run namespace tests"
  (interactive)
  (cider-load-buffer)
  (cider-test-run-ns-tests t))
