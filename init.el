;;; Settings to select a custom `.emacs.d` directory by `emacs -q --load init.el`.
;;; See `run.sh`.
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

;;; Bootstrap straight.
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
(require 'straight)

;;; Bootstrap use-package.
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(require 'use-package)

;;; Load my packages.
(use-package my-use-package      :load-path "my-packages" :straight nil)
(use-package my-flycheck         :load-path "my-packages" :straight nil)
(use-package my-theme            :load-path "my-packages" :straight nil)
(use-package my-hydra            :load-path "my-packages" :straight nil)
(use-package my-cursor-move      :load-path "my-packages" :straight nil)
(use-package my-backup           :load-path "my-packages" :straight nil)
(use-package my-history          :load-path "my-packages" :straight nil)
(use-package my-clipboard-sync   :load-path "my-packages" :straight nil)
(use-package my-multiple-cursors :load-path "my-packages" :straight nil)
(use-package my-visual-regexp    :load-path "my-packages" :straight nil)
(use-package my-memo             :load-path "my-packages" :straight nil)
(use-package my-key-chord        :load-path "my-packages" :straight nil)
(use-package my-git              :load-path "my-packages" :straight nil)
(use-package my-projectile       :load-path "my-packages" :straight nil)
