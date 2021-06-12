(require 'use-package)

(use-package key-chord
  :defer t
  :functions (key-chord-mode key-chord-define-global)
  :config
  (key-chord-mode 1)
  (key-chord-define-global "gl" 'goto-line))

(use-package use-package-chords)

(provide 'my-key-chord)
