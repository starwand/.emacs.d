(require 'use-package)

(use-package projectile
  :functions (projectile-mode)
  :diminish projectile-mode
  :bind
  (("C-o" . projectile-find-other-file))
  :config
  (setq projectile-enable-caching t)
  (projectile-mode))

(provide 'my-projectile)
