(use-package flycheck
  :config (global-flycheck-mode))

(use-package flycheck-popup-tip
  :config
  (add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode))

(provide 'my-flycheck)
