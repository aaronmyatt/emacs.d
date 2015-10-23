;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")
;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/elpa/eval-in-repl")
(add-to-list 'load-path "~/.emacs.d/elpa/paredit")
(add-to-list 'load-path "~/.emacs.d/elpa/find-file-in-repository")
(add-to-list 'load-path "~/.emacs.d/el-get/ecb")



;; define various custom functions
(require 'custom-functions)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)

;---------------;
;;; Utilities ;;;
;---------------;

;; Git
(include-plugin "magit")
(require 'magit)
(global-set-key (kbd "C-c g") 'magit-status)

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; Websocket
(include-plugin "websocket")
(require 'websocket)

;; Request
(include-plugin "request")
(require 'request)

;; Auto complete
(require 'auto-complete-settings)

;; yasnippet
(require 'yasnippet-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Helm
(require 'helm-settings)


;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; eval-in-repl-settings
(require 'eval-in-repl-settings)

;; ecb-settings
(require 'ecb-settings)

;; web-mode
(require 'web-mode-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode 
(require 'python-settings)

;; LaTeX and Auctex
;; (require 'latex-settings)

;; SCSS Mode
(require 'scss-settings)

;; Matlab mode
;; (require 'matlab-settings)

;; Javascript
(require 'js-settings)

;; YAML mode
(require 'yaml-settings)


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

(package-initialize)
