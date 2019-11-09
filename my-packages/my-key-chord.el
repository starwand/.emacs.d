(use-package key-chord)

(use-package use-package-chords
  :config
  (key-chord-mode 1)
  (key-chord-define-global "gl" 'goto-line))

(provide 'my-key-chord)
