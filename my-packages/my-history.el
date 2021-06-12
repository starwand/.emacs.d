(require 'use-package)

;;; recentf settings
(use-package recentf
  :config
  (setq recentf-max-saved-items 4000)
  (recentf-mode 1))

;;; save minibuffer history
(savehist-mode t)

(provide 'my-history)
