(require 'use-package)

(use-package eshell
  :after (xterm-color)
  :config
  (with-eval-after-load 'esh-mode
    (add-hook 'eshell-mode-hook
              (lambda () (progn
                           (setq xterm-color-preserve-properties t)
                           (setenv "TERM" "xterm-256color"))))

    (add-to-list 'eshell-preoutput-filter-functions 'xterm-color-filter)

    (setq eshell-output-filter-functions
          (remove 'eshell-handle-ansi-color eshell-output-filter-functions))
    ))

(provide 'my-eshell)
