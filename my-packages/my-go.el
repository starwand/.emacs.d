(use-package go-mode
  :hook ((go-mode) . (lambda ()
		       (lsp-deferred)
		       (add-hook 'before-save-hook 'gofmt-before-save)
		       (setq tab-width 2))))

(provide 'my-go)
