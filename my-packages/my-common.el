;; windmove settings
(windmove-default-keybindings)
(use-package framemove
  :config
  (setq framemove-hook-into-windmove t))

(setq make-backup-files nil)

;; linum-mode settings
(global-linum-mode t)
(setq linum-format "%4d")
(setq column-number-mode t)

;; font settings
(set-frame-font "Ricty Diminished Discord-12")
(setq default-frame-alist '((font . "Ricty Diminished Discord-12")))
(set-fontset-font t 'japanese-jisx0208 "Ricty Diminished Discord")
(setq use-default-font-for-symbols nil)

;; recentf settings
(setq recentf-max-saved-items 4000)
(recentf-mode 1)

;; save minibuffer history
(savehist-mode t)

;; Disable unnecessary stuff
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)
(which-func-mode 0) ; which-func-mode is slow when opening large file
(setq inhibit-startup-screen t)

;; region
(set-face-foreground 'region nil)
(set-face-background 'region "dark slate blue")

;; hl-hine
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "LavenderBlush3"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode 1)

(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-eighties 'no-confirm))
(set-cursor-color "magenta")

(use-package mwim
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(use-package visual-regexp
  :bind (("M-%" . vr/query-replace)))

(use-package presentation)

(use-package beacon
  :custom
  (beacon-color "magenta")
  :config
  (beacon-mode t))

(desktop-save-mode)

(use-package xclip
  :config
  (xclip-mode 1))

(use-package anzu
  :diminish
  :bind
  ("C-r"   . anzu-query-replace-regexp)
  ("C-M-r" . anzu-query-replace-at-cursor-thing)
  :hook
  (after-init . global-anzu-mode))

(use-package highlight-indent-guides
  :diminish
  :hook
  ((prog-mode yaml-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-auto-enabled t)
  (highlight-indent-guides-responsive t)
  (highlight-indent-guides-method 'column))

(use-package fill-column-indicator
  :hook
  ((markdown-mode
    git-commit-mode) . fci-mode))

(use-package deft
  :bind ("C-, C-," . deft))

(use-package know-your-http-well
  :commands (http-header
            http-method
            http-relation
            http-status-code
            media-type))

(provide 'my-common)
