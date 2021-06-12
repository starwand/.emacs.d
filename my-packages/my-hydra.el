(require 'use-package)

(use-package hydra)
(use-package use-package-hydra)

(use-package hydra-posframe
  :after hydra
  :straight (:host github :repo "Ladicle/hydra-posframe")
  :config
  (setq hydra-posframe-poshandler 'posframe-poshandler-point-top-left-corner)
  (setq hydra-posframe-border-width 1)
  (setq hydra-posframe-parameters '((left-fringe . 8) (right-fringe . 8)))
  (hydra-posframe-mode))

(provide 'my-hydra)
