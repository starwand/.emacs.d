(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook ((c++-mode c-mode) . #'lsp)
  :custom
  (lsp-print-io nil)
  (lsp-trace nil)
  (lsp-print-performance nil)
  (lsp-auto-guess-root t)
  (lsp-document-sync-method 'incremental)
  (lsp-response-timeout 5)
  (lsp-prefer-flymake 'flymake)
  (lsp-enable-completion-at-point nil)
  :config
  (define-key lsp-mode-map [(meta t)] 'xref-find-definitions)
  (define-key lsp-mode-map [(meta r)] 'xref-find-references)
  (define-key lsp-mode-map [(control t)] 'xref-pop-marker-stack)
  (define-key lsp-mode-map [(control x) (control r)] 'xref-file-location)
  (define-key lsp-mode-map [(control :)] 'xref-item-summary)
  (define-key lsp-mode-map (kbd "<tab>") (function company-indent-for-tab-command))
  )

(use-package lsp-ui
  :commands lsp-ui-mode
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-header t)
  (lsp-ui-doc-include-signature t)
  (lsp-ui-doc-position 'top)
  (lsp-ui-doc-max-width 120)
  (lsp-ui-doc-max-height 30)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit t)
  (lsp-ui-flycheck-enable nil)
  (lsp-ui-imenu-enable nil)
  (lsp-ui-imenu-kind-position 'top)
  (lsp-ui-peek-enable t)
  (lsp-ui-peek-peek-height 20)
  (lsp-ui-peek-list-width 50)
  (lsp-ui-peek-fontify 'on-demand)
  :config
  (setq lsp-ui-doc-position 'at-point
        lsp-ui-sideline-enable nil
        lsp-ui-peek-force-fontify t
        lsp-ui-peek-expand-function 'lsp-ui-peek--expand-buffer
        lsp-ui-peek-always-show t
        lsp-ui-peek-peek-height 40)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (define-key lsp-ui-mode-map (kbd "C-S-<left>") #'lsp-ui-peek-find-references)
  (define-key lsp-ui-mode-map (kbd "C-S-<right>") #'lsp-ui-peek-find-definitions))

(defhydra hydra-lsp (:exit t :hint nil)
  "
 Buffer^^               Server^^                   Symbol
-------------------------------------------------------------------------------------
 [_f_] format           [_M-r_] restart            [_d_] declaration  [_i_] implementation  [_o_] documentation
 [_m_] imenu            [_S_]   shutdown           [_D_] definition   [_t_] type            [_r_] rename
 [_x_] execute action   [_M-s_] describe session   [_R_] references   [_s_] signature"
  ("d" lsp-find-declaration)
  ("D" lsp-ui-peek-find-definitions)
  ("R" lsp-ui-peek-find-references)
  ("i" lsp-ui-peek-find-implementation)
  ("t" lsp-find-type-definition)
  ("s" lsp-signature-help)
  ("o" lsp-describe-thing-at-point)
  ("r" lsp-rename)

  ("f" lsp-format-buffer)
  ("m" lsp-ui-imenu)
  ("x" lsp-execute-code-action)

  ("M-s" lsp-describe-session)
  ("M-r" lsp-restart-workspace)
  ("S" lsp-shutdown-workspace))

(provide 'my-lsp)
