(require 'use-package)

(use-package paren
  :config
  (show-paren-mode 1)
  (setq-default show-paren-delay 0
		show-paren-style 'expression
		show-paren-when-point-inside-paren t
		show-paren-priority -200)
  (set-face-attribute 'show-paren-match nil
                      :background "gray21"
                      :foreground 'unspecified
                      :underline "brightmagenta"
                      :weight 'normal))

(use-package smartparens
  :diminish smartparens-mode
  :config
  (require 'smartparens-config)
  (smartparens-global-mode 1))

(provide 'my-smart-parens)
