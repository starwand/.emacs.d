(require 'use-package)

(use-package deft
  :defer t
  :bind (("C-, C-," . deft)
         :map deft-mode-map
         ("?" . hydra-deft/body))
  :config
  (setq deft-directory "~/work/memo"
        deft-extensions '("md")
        deft-recursive t
        deft-new-file-format "%Y%m%d-%H%M%S")
  (defvar deft-default-extension (car deft-extensions))
  :hydra
  (hydra-deft (:color teal :hint nil :columns 4)
  "deft"
  ("n" deft-new-file       "New Memo")
  ("N" deft-new-file-named "New Memo (named)")
  ("q" nil "Quit" :color blue)))

(provide 'my-memo)
