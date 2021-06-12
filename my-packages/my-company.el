(require 'use-package)

(use-package company
  :diminish company-mode
  :config
  (global-company-mode)
  (setq company-idle-delay 0.2
        company-minimum-prefix-length 2
        company-tooltip-limit 20
        company-selection-wrap-around t)
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
  (set-face-attribute 'company-tooltip nil
                      :foreground "black"
                      :background "grey80")
  (set-face-attribute 'company-tooltip-common nil
                      :foreground "red"
                      :background nil)
  (set-face-attribute 'company-tooltip-annotation nil
                      :foreground "dark green"
                      :background nil)
  (set-face-attribute 'company-tooltip-selection nil
                      :foreground "forest green"
                      :background "black")
  (set-face-attribute 'company-tooltip-search nil
                      :foreground "blue"
                      :background nil)
  (set-face-attribute 'company-scrollbar-fg nil
                      :background "orange")
  (set-face-attribute 'company-scrollbar-bg nil
                      :background "gray30"))

(use-package company-quickhelp
  :config
  (company-quickhelp-mode)
  (setq company-quickhelp-delay 0.01))

(use-package company-statistics
  :init
  (add-hook 'after-init-hook 'company-statistics-mode))

(provide 'my-company)
