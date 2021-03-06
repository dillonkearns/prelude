;; You need to set `inhibit-startup-echo-area-message' from the
;; customization interface:
;; M-x customize-variable RET inhibit-startup-echo-area-message RET
;; then enter your username
(setq inhibit-startup-echo-area-message "dillonkearns")

;; This is bound to f11 in Emacs
(toggle-frame-fullscreen)
;; Who use the bar to scroll?
(scroll-bar-mode 0)

;; You can also set the initial frame parameters
;; (setq initial-frame-alist
;;       '((menu-bar-lines . 0)
;;         (tool-bar-lines . 0)))

;; See http://bzg.fr/emacs-hide-mode-line.html
;; (defvar-local hidden-mode-line-mode nil)
;; (defvar-local hide-mode-line nil)

;; (define-minor-mode hidden-mode-line-mode
;;   "Minor mode to hide the mode-line in the current buffer."
;;   :init-value nil
;;   :global nil
;;   :variable hidden-mode-line-mode
;;   :group 'editing-basics
;;   (if hidden-mode-line-mode
;;       (setq hide-mode-line mode-line-format
;;             mode-line-format nil)
;;     (setq mode-line-format hide-mode-line
;;           hide-mode-line nil))
;;   (force-mode-line-update)
;;   ;; Apparently force-mode-line-update is not always enough to
;;   ;; redisplay the mode-line
;;   (redraw-display)
;;   (when (and (called-interactively-p 'interactive)
;;              hidden-mode-line-mode)
;;     (run-with-idle-timer
;;      0 nil 'message
;;      (concat "Hidden Mode Line Mode enabled.  "
;;              "Use M-x hidden-mode-line-mode to make the mode-line appear."))))

;; Activate hidden-mode-line-mode
;; (hidden-mode-line-mode 1)

(setq-default mode-line-format nil)

;; If you want to hide the mode-line in all new buffers
;; (add-hook 'after-change-major-mode-hook 'hidden-mode-line-mode)

;; Alternatively, you can paint your mode-line in White but then
;; you'll have to manually paint it in black again
;; (custom-set-faces
;;  '(mode-line-highlight ((t nil)))
;;  '(mode-line ((t (:foreground "white" :background "white"))))
;;  '(mode-line-inactive ((t (:background "white" :foreground "white")))))

(provide 'naked)
