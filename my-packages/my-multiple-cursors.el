(require 'use-package)

(use-package region-bindings-mode
  :functions (region-bindings-mode-enable)
  :config
  (region-bindings-mode-enable))

(use-package multiple-cursors
  :defer t
  :defines (region-bindings-mode-map)
  :bind
  (:map region-bindings-mode-map
        ("a" . mc/mark-all-like-this-dwim)
        ("p" . mc/mark-previous-like-this)
        ("n" . mc/mark-next-like-this)
        ("u" . mc/remove-current-cursor)
        ("<tab>" . nil)
        ("<backtab>" . mc/cycle-backward)
        ("C-;" . multiple-cursors-mode))
  (("C-;" . mc/mark-alldwim)))

(provide 'my-multiple-cursors)
