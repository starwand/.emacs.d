(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(use-package use-package-hydra)
(use-package hydra)

(use-package my-common            :load-path "my-packages" :straight nil)
(use-package my-key-chord         :load-path "my-packages" :straight nil)
(use-package my-git               :load-path "my-packages" :straight nil)
(use-package my-projectile        :load-path "my-packages" :straight nil)
(use-package my-helm              :load-path "my-packages" :straight nil)
