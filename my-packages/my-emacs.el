;;; Eliminate inadvertently quitting Emacs with C-x C-c.
(global-unset-key (kbd "C-x C-c"))
(defalias 'exit 'save-buffers-kill-emacs)
(defalias 'quit 'save-buffers-kill-emacs)

(provide 'my-emacs)
