(windmove-default-keybindings)
(use-package framemove
  :config
  (setq framemove-hook-into-windmove t))

(setq make-backup-files nil)

(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-eighties 'no-confirm))

(provide 'my-common)
