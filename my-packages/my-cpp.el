(use-package google-c-style
  :hook ((c-mode-common-hook google-set-c-style)
         (c-mode-common-hook google-make-newline-indent)))

(use-package clang-format)


(use-package cc-mode
  :bind (:map c-mode-base-map ("C-c C-c" . nil) ("C-c C-c" . 'recompile)))

(provide 'my-cpp)
