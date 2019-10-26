(use-package projectile
  :diminish projectile-mode
  :config
  (setq projectile-enable-caching t)
  (projectile-global-mode)

  ;; Reference: https://github.com/abo-abo/hydra/wiki/Projectile#alternative
  :hydra
  (hydra-projectile
   (:color teal :columns 4)
   "Projectile"
   ("f"   projectile-find-file                "Find File")
   ("r"   projectile-recentf                  "Recent Files")
   ("z"   projectile-cache-current-file       "Cache Current File")
   ("x"   projectile-remove-known-project     "Remove Known Project")
   
   ("d"   projectile-find-dir                 "Find Directory")
   ("b"   projectile-switch-to-buffer         "Switch to Buffer")
   ("c"   projectile-invalidate-cache         "Clear Cache")
   ("X"   projectile-cleanup-known-projects   "Cleanup Known Projects")
   
   ("o"   projectile-multi-occur              "Multi Occur")
   ("s"   projectile-switch-project           "Switch Project")
   ("k"   projectile-kill-buffers             "Kill Buffers")
   ("q"   nil "Cancel" :color blue)))

(provide 'my-projectile)
