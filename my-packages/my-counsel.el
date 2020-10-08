(use-package counsel
  :after ivy
  :demand t
  :diminish
  :bind (("C-x C-f" . counsel-find-file)
	 ("M-x"     . counsel-M-x)))

(use-package counsel-projectile
  :after (counsel projectile)
  :config
  (counsel-projectile-mode 1))

(provide 'my-counsel)
