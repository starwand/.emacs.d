(require 'use-package)

(use-package dumb-jump
  :bind
  ("C-x C-d" . hydra-dumb-jump/body)
  :config
  (setq dumb-jump-selector 'ivy)
  (setq dumb-jump-prefer-searcher 'rg)
  :hydra
  (hydra-dumb-jump
   (:color blue :columns 3)
   "Dumb Jump"
   ("j" dumb-jump-go "Go")
   ("o" dumb-jump-go-other-window "Other window")
   ("e" dumb-jump-go-prefer-external "Go external")
   ("x" dumb-jump-go-prefer-external-other-window "Go external other window")
   ("i" dumb-jump-go-prompt "Prompt")
   ("l" dumb-jump-quick-look "Quick look")
   ("b" dumb-jump-back "Back")))

(provide 'my-dumb-jump)
