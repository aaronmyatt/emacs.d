;------------------------------------;
;;; eval-to-repl package settings  ;;;
;------------------------------------;

(require 'eval-in-repl)

;; ielm support (for emacs lisp)
(require 'eval-in-repl-ielm)
;; for .el files
(define-key emacs-lisp-mode-map (kbd "<C-return>") 'eir-eval-in-ielm)
;; for *scratch*
(define-key lisp-interaction-mode-map (kbd "<C-return>") 'eir-eval-in-ielm)
;; for M-x info
;; (define-key Info-mode-map (kbd "<C-return>") 'eir-eval-in-ielm)

;; ;; SLIME support (for Common Lisp)
;; ;; (require 'slime) ; if not done elsewhere
;; (require 'eval-in-repl-slime)
;; (add-hook 'lisp-mode-hook
;;           '(lambda ()
;;              (local-set-key (kbd "<C-return>") 'eir-eval-in-slime)))

;; Python support
;; (require 'python) ; if not done elsewhere
(require 'eval-in-repl-python)
(define-key python-mode-map (kbd "<C-return>") 'eir-eval-in-python)

;; Shell support
;; (require 'essh) ; if not done elsewhere
;; (require 'eval-in-repl-shell)
;; (add-hook 'sh-mode-hook
;;           '(lambda()
;;          (local-set-key (kbd "C-<return>") 'eir-eval-in-shell)))
;; ;; Version with opposite behavior to eir-jump-after-eval configuration
;; (defun eir-eval-in-shell2 ()
;;   "eval-in-repl for shell script (opposite behavior)

;; This version has the opposite behavior to the eir-jump-after-eval
;; configuration when invoked to evaluate a line."
;;   (interactive)
;;   (let ((eir-jump-after-eval (not eir-jump-after-eval)))
;;        (eir-eval-in-shell)))
;; (add-hook 'sh-mode-hook
;;           '(lambda()
;;          (local-set-key (kbd "C-M-<return>") 'eir-eval-in-shell2)))

(provide `eval-in-repl-settings)
