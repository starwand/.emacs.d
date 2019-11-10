(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1)
  :hook (prog-mode . yas-minor-mode)
  :bind
  (:map yas-keymap
	("<tab>" . nil)) ; avoid conflict with company
  (:map yas-minor-mode-map
	("C-M-i" . helm-yas-complete)))

(use-package helm-c-yasnippet)

(provide 'my-yasnippet)
