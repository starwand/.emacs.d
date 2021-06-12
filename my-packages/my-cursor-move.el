(require 'use-package)

;;; windmove
(windmove-default-keybindings)

;;; framemove
(use-package framemove
  :defer t
  :config
  (setq framemove-hook-into-windmove t))

;;; nwim
(use-package mwim
  :defer t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(provide 'my-cursor-move)
