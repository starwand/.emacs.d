(use-package python-mode
  :hook (python-mode . (lambda () (lsp))))

(use-package conda
   :init
   (custom-set-variables '(conda-anaconda-home "~/anaconda3")))

(provide 'my-python-mode)
