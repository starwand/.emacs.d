(use-package google-c-style
  :straight (google-c-style :type git :host github :repo "google/styleguide" :branch "gh-pages")
  :hook ((c-mode-common . google-set-c-style)
         (c-mode-common . google-make-newline-indent)))

(use-package clang-format)

(use-package cc-mode
  :bind (:map c-mode-base-map ("C-c C-c" . nil) ("C-c C-c" . 'recompile)
	      ([C-M-return] . 'clang-format-region)))

(provide 'my-cpp)
