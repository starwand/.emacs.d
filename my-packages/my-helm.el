(use-package helm
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x C-b" . helm-buffers-list)
	 ("C-x C-g" . ibuffer)
	 ("C-x C-p" . hydra-projectile/body)
	 ("C-y" . helm-show-kill-ring)
	 :map helm-map
	 ("<left>" . 'helm-previous-source)
	 ("<right>" . 'helm-next-source))
  :config
  (setq helm-split-window-preferred-function 'split-window-sensibly)
  (setq helm-M-x-fuzzy-match t)
  (customize-set-variable 'helm-ff-lynx-style-map t))

(use-package helm-describe-modes
  :after helm
  :bind ("C-h m" . helm-describe-modes))

(use-package helm-rg)

(use-package helm-projectile
  :config
  (helm-projectile-on)
  ;; Reference: https://github.com/abo-abo/hydra/wiki/Projectile#alternative
  :hydra
  (hydra-projectile
   (:color teal :columns 4)
   "Projectile"
   ("f"   helm-projectile-find-file                    "Find File")
   ("k"   helm-projectile-find-file-in-known-projects  "Find File in known projects")
   ("o"   helm-projectile-find-other-file              "Find other file")
   ("r"   helm-projectile-rg                           "Ripgrep")
   ("z"   projectile-cache-current-file                "Cache Current File")
   ("x"   projectile-remove-known-project              "Remove Known Project")
   
   ("d"   helm-projectile-find-dir                     "Find Directory")
   ("b"   helm-projectile-switch-to-buffer             "Switch to Buffer")
   ("c"   projectile-invalidate-cache                  "Clear Cache")
   ("X"   projectile-cleanup-known-projects            "Cleanup Known Projects")
   
   ("s"   helm-projectile-switch-project               "Switch Project")
   ("k"   projectile-kill-buffers                      "Kill Buffers in Project")
   ("q"   nil "Cancel" :color blue)))

(provide 'my-helm)
