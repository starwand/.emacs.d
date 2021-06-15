(require 'use-package)

(use-package xterm-color
  :straight (:host github :repo "atomontage/xterm-color")
  :config
  (setq compilation-environment '("TERM=xterm-256color"))
  (defun my/advice-compilation-filter (f proc string)
    (funcall f proc (xterm-color-filter string)))
  (advice-add 'compilation-filter :around #'my/advice-compilation-filter))

(provide 'my-xterm-color)
