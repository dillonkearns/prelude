(server-start)   ;; start a server so we only have to open emacs once at startup

;; COLOR-THEME ;;
;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)
(load-theme 'solarized-dark t)
