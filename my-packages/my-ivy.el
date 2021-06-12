(require 'use-package)

(use-package ivy
  :config
  (setq ivy-initial-inputs-alist nil))

(use-package ivy-posframe
  :diminish ivy-posframe-mode
  :config
  (setq ivy-posframe-display-functions-alist
        '((swiper               . nil)
          (swiper-avy           . nil)
          (swiper-isearch       . nil)
          (complete-symbol      . ivy-posframe-display-at-point)
          (counsel-M-x          . ivy-posframe-display-at-point)
          (flyspell-correct-ivy . ivy-posframe-display-at-point)
          (counsel-recentf      . ivy-posframe-display-at-frame-center)
          (t                    . ivy-posframe-display)
          ))
  (setq ivy-posframe-parameters
        '((left-fringe . 8)
          (right-fringe . 8)))
  (setq ivy-posframe-border-width 1)
  (setq ivy-posframe-height-alist '((t . 20)))
  (ivy-posframe-mode 1))

(use-package ivy-rich
  :after (ivy counsel)
  :init
  (setq ivy-rich-path-style 'abbrev
        ivy-virtual-abbreviate 'full)
  :config
  (ivy-rich-mode 1)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(provide 'my-ivy)
