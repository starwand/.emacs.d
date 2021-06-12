(require 'use-package)

(use-package which-key
  :diminish which-key-mode
  :config
  (which-key-setup-side-window-bottom)
  (which-key-mode 1))

(provide 'my-which-key)
