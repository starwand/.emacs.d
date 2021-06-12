(require 'use-package)

(use-package flycheck
  :diminish
  :hook (prog-mode . global-flycheck-mode)
  :config
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (add-hook 'c++-mode-hook (lambda ()
                             (setq flycheck-gcc-language-standard "c++11"))))

(use-package flycheck-popup-tip
  :hook (flycheck-mode . flycheck-popup-tip-mode))

(provide 'my-flycheck)
