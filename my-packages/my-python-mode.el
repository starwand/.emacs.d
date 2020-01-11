(use-package python-mode
  :hook (python-mode . (lambda () (lsp)))
  :bind (:map python-mode-map ("C-<backspace>" . 'backward-kill-word)))

(use-package conda
   :init
   (custom-set-variables '(conda-anaconda-home "~/anaconda3")))

(use-package py-yapf
  :hook (python-mode . (lambda () (py-yapf-enable-on-save))))

(provide 'my-python-mode)
