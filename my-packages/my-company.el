(use-package company-quickhelp
  :config
  (company-quickhelp-mode 1))

(use-package company
  :config
  (global-company-mode)
  (defun company-indent-for-tab-command (&optional arg)
    (interactive "P")
    (let ((completion-at-point-functions-saved completion-at-point-functions)
	  (completion-at-point-functions '(company-complete)))
      (indent-for-tab-command arg)))
  (setq company-idle-delay 0
	company-minimum-prefix-length 2
	company-tooltip-limit 20
	company-selection-wrap-around t
	company-quickhelp-delay 0.01)
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  (define-key company-mode-map [remap indent-for-tab-command] 'company-indent-for-tab-command)
  (company-quickhelp-mode)
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

(use-package company-lsp
  :custom
  (company-lsp-cache-candidates t)
  (company-lsp-async t)
  (company-lsp-enable-recompletion nil)
  :config
  (push 'company-lsp company-backends)
  (setq company-transformers nil))

(use-package company-statistics
  :init
  (add-hook 'after-init-hook 'company-statistics-mode))

(provide 'my-company)
