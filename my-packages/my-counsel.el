(require 'use-package)

(use-package counsel
  :after (ivy company)
  :diminish
  :bind (("C-x C-f" . counsel-find-file)
         ("M-x"     . counsel-M-x))
  :config
  (defun my-company-complete-common (old-func)
    (if (company-tooltip-visible-p)
        (company-complete-selection)
      (counsel-company)))
  (advice-add #'company-complete-common
              :around #'my-company-complete-common))

(use-package counsel-projectile
  :bind
  (("C-x C-p" . hydra-counsel-projectile/body))
  :config
  (counsel-projectile-mode 1)
  (setq counsel-projectile-rg-initial-input '(ivy-thing-at-point))
  :hydra
  (hydra-counsel-projectile (:color teal
                             :columns 4)
  "Projectile"
  ("f"   counsel-projectile-find-file         "Find File")
  ("r"   counsel-projectile-rg                "Ripgrep")
  ("z"   projectile-cache-current-file        "Cache Current File")
  ("x"   projectile-remove-known-project      "Remove Known Project")

  ("b"   counsel-projectile-switch-to-buffer  "Switch to Buffer")
  ("c"   projectile-invalidate-cache          "Clear Cache")
  ("X"   projectile-cleanup-known-projects    "Cleanup Known Projects")

  ("s"   counsel-projectile-switch-project    "Switch Project")
  ("k"   projectile-kill-buffers              "Kill Buffers")
  ("q"   nil "Cancel" :color blue)))

(use-package smex
  :defines smex-save-file
  :config
  (smex-initialize))

(provide 'my-counsel)
