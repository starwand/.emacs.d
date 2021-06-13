(require 'use-package)

(use-package company
  :diminish company-mode
  :init
  (add-hook 'prog-mode-hook
            #'(lambda ()
                (local-set-key (kbd "<tab>")
                               #'company-indent-or-complete-common)))
  :config
  (global-company-mode)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  (setq company-idle-delay 0.2
        company-minimum-prefix-length 2
        company-tooltip-limit 20
        company-selection-wrap-around t)
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
