(require 'use-package)

(use-package dashboard
  :diminish
  (dashboard-mode)
  :custom
  (dashboard-center-content t)
  (dashboard-items '((recents . 20)
                     (projects . 10)))
  :custom-face
  (dashboard-heading ((t (:foreground "light sky blue" :weight bold))))
  :hook
  (after-init . dashboard-setup-startup-hook))

(provide 'my-dashboard)
