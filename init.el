;;; Settings to select a custom `.emacs.d` directory by `emacs -q --load init.el`.
;;; See `run.sh`.
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))
