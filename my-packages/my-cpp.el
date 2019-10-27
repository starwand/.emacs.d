(use-package google-c-style
  :hook ((c-mode-common-hook google-set-c-style)
         (c-mode-common-hook google-make-newline-indent)))

(use-package ccls
  :hook ((c-mode c++-mode) .
         (lambda () (require 'ccls) (lsp)))
  :config
  (setq ccls-executable "ccls")
  (setq ccls-args '("--log-file=/tmp/ccls.log"))

  ;; Recommended helpers by ccls wiki.
  (defun ccls/callee () (interactive) (lsp-ui-peek-find-custom "$ccls/call" '(:callee t)))
  (defun ccls/caller () (interactive) (lsp-ui-peek-find-custom "$ccls/call"))
  (defun ccls/vars (kind) (lsp-ui-peek-find-custom "$ccls/vars" `(:kind ,kind)))
  (defun ccls/base (levels) (lsp-ui-peek-find-custom "$ccls/inheritance" `(:levels ,levels)))
  (defun ccls/derived (levels) (lsp-ui-peek-find-custom "$ccls/inheritance" `(:levels ,levels :derived t)))
  (defun ccls/member (kind) (interactive) (lsp-ui-peek-find-custom "$ccls/member" `(:kind ,kind)))

  ;; References w/ Role::Role
  (defun ccls/references-read () (interactive)
         (lsp-ui-peek-find-custom "textDocument/references"
                                  (plist-put (lsp--text-document-position-params) :role 8)))
  ;; References w/ Role::Write
  (defun ccls/references-write ()
    (interactive)
    (lsp-ui-peek-find-custom "textDocument/references"
                             (plist-put (lsp--text-document-position-params) :role 16)))
  ;; References w/ Role::Dynamic bit (macro expansions)
  (defun ccls/references-macro () (interactive)
         (lsp-ui-peek-find-custom "textDocument/references"
                                  (plist-put (lsp--text-document-position-params) :role 64)))
  ;; References w/o Role::Call bit (e.g. where functions are taken addresses)
  (defun ccls/references-not-call () (interactive)
         (lsp-ui-peek-find-custom "textDocument/references"
                                  (plist-put (lsp--text-document-position-params) :excludeRole 32)))

  (define-key c-mode-base-map (kbd "M-S-<down>") (lambda () (interactive) (ccls-navigate "D")))
  (define-key c-mode-base-map (kbd "M-S-<left>") (lambda () (interactive) (ccls-navigate "L")))
  (define-key c-mode-base-map (kbd "M-S-<right>") (lambda () (interactive) (ccls-navigate "R")))
  (define-key c-mode-base-map (kbd "M-S-<up>") (lambda () (interactive) (ccls-navigate "U")))
  (setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil))

(use-package cc-mode
  :bind (:map c-mode-base-map ("C-c C-c" . nil) ("C-c C-c" . 'recompile)))

(provide 'my-cpp)
