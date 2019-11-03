(windmove-default-keybindings)
(use-package framemove
  :config
  (setq framemove-hook-into-windmove t))

(setq make-backup-files nil)

(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-eighties 'no-confirm))
(use-package know-your-http-well
  :commands (http-header
            http-method
            http-relation
            http-status-code
            media-type))

(provide 'my-common)
