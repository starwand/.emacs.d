(require 'use-package)

;;; linum-mode settings
(use-package nlinum
  :functions global-nlinum-mode
  :config
  (global-nlinum-mode t)
  (setq nlinum-format "%4d "))
(global-display-line-numbers-mode)

;;; fill-column
(setq-default display-fill-column-indicator-column 100)
(global-display-fill-column-indicator-mode)

;;; font settings
(set-frame-font "Cascadia Code 12")
(setq default-frame-alist '((font . "Cascadia Code 12")))
(set-fontset-font t 'japanese-jisx0208 "Cascadia Code 12")
(setq use-default-font-for-symbols nil)

;;; Disable unnecessary stuff.
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)
(which-function-mode 0) ; which-function-mode is slow when opening large file
(setq inhibit-startup-screen t)

;;; cursor
(set-cursor-color "magenta")

;;; beacon
(use-package beacon
  :functions (beacon-mode)
  :custom
  (beacon-color "magenta")
  :config
  (beacon-mode t))

;;; region
(set-face-foreground 'region nil)
(set-face-background 'region "gray45")

;;; color-theme
(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-eighties 'no-confirm))

;;; presentation
(use-package presentation
  :defer t)

;;; indent
(use-package highlight-indent-guides
  :diminish
  :hook
  ((prog-mode yaml-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-auto-enabled t)
  (highlight-indent-guides-responsive nil)
  (highlight-indent-guides-method 'column))

;;; delimiters
(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode))

;;; eldoc
(use-package eldoc
  :diminish)

(provide 'my-theme)
