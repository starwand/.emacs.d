(use-package eglot
  :hook ((c-mode-hook eglot-ensure)
	 (c++-mode-hook eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd")))

(provide 'my-eglot)
