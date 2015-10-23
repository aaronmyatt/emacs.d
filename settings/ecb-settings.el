;=============;
;= ECB Settings =;
;=============;

;; start of ecb configuration/customization:
;;
(require 'ecb)


(setq stack-trace-on-error t)
(setq ecb-version-check nil)
(setq ecb-layout-name "left6")
;; (setq ecb-tree-buffer-style 'ascii-guides)
(global-set-key [f12] 'ecb-activate)
(setq ecb-tip-of-the-day nil)
(setq ecb-primary-secondary-mouse-buttons 'mouse-1--mouse-2)


(setq ecb-source-file-regexps
  '((".*" .     (("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(\\pyc\\||elc\\|obj\\|o\\|class\\|lib\\|dll\\|a\\|so\\|cache\\)$\\)\\)")
             ("^\\.\\(emacs\\|gnus\\)$")))))



;;
;; disable global semantic idle scheduler.
;; it doesn't really seem to work all that well in automatically
;; reparsing buffers and it's actually intrusive when i'm typing:

(add-hook 'ecb-activate-hook
          '(lambda()
             (semantic-mode t)
             ;; (ecb-maximize-window-methods)
             (setq global-semantic-idle-scheduler-mode nil)
             ))



(add-hook 'after-save-hook
          '(lambda()
             (when (bound-and-true-p ecb-minor-mode)
               ;; this is to get the methods buffer to refresh correctly.
               ;; semantic idle mode refresh doesn't seem to work all that     well.
               (run-at-time 1 nil 'semantic-force-refresh)
               )
             ))


;; (set-face-attribute 'ecb-default-general-face nil
;;                     :inherit 'default)

;; (set-face-attribute 'ecb-default-highlight-face nil
;;                     :background "#464646")

;; (set-face-attribute 'ecb-tag-header-face nil
;;                     :background "#464646")
;;
;; end of ecb configuration/customization

(provide 'ecb-settings)

