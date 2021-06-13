(require 'use-package)

(use-package helm
  :bind (("C-x C-b" . helm-buffers-list)
         ("C-x C-g" . ibuffer)
         :map helm-map
         ("<left>"  . 'helm-previous-source)
         ("<right>" . 'helm-next-source))
  :config
  (setq helm-split-window-preferred-function 'split-window-sensibly)
  (customize-set-variable 'helm-ff-lynx-style-map t))

(use-package helm-descbinds
  :after helm
  :bind ("C-h b" . helm-descbinds))

(use-package helm-describe-modes
  :after helm
  :bind ("C-h m" . helm-describe-modes))

(provide 'my-helm)
