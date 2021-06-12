(require 'use-package)

(use-package perspective
  :demand t
  :config
  (persp-mode)
  (global-set-key (kbd "C-x b") 'persp-ivy-switch-buffer)
  (global-set-key (kbd "C-<prior>") 'persp-prev)
  (global-set-key (kbd "C-<next>") 'persp-next)
  (setq persp-state-default-file (concat (file-name-directory user-init-file) "persp-state-file"))
  (persp-state-load persp-state-default-file)
  (add-hook 'kill-emacs-hook #'persp-state-save))

(provide 'my-perspective)
