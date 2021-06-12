(require 'use-package)

(use-package xclip
  :defer t
  :functions (xclip-mode)
  :config
  (xclip-mode 1))

(provide 'my-clipboard-sync)
