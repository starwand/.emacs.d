(use-package elscreen
  :config
  (defmacro elscreen-create-automatically (ad-do-it)
    `(if (not (elscreen-one-screen-p))
         ,ad-do-it
       (elscreen-create)
       (elscreen-notify-screen-modification 'force-immediately)
       (elscreen-message "New screen is automatically created")))
  (defadvice elscreen-next (around elscreen-create-automatically activate)
    (elscreen-create-automatically ad-do-it))
  (defadvice elscreen-previous (around elscreen-create-automatically activate)
    (elscreen-create-automatically ad-do-it))
  (defadvice elscreen-toggle (around elscreen-create-automatically activate)
    (elscreen-create-automatically ad-do-it))

  (define-key global-map (kbd "C-<prior>") 'elscreen-previous)
  (define-key global-map (kbd "C-<next>") 'elscreen-next)
  (define-key global-map (kbd "C-S-T") 'elscreen-create)
  (define-key global-map (kbd "C-S-W") 'elscreen-kill)

  (setq elscreen-display-tab 20)
  (setq elscreen-tab-display-kill-screen nil)
  (custom-set-variables)

  (custom-set-faces
   '(elscreen-tab-current-screen-face ((t (:foreground "darkorange" :background "gray10"))))
   '(elscreen-tab-background-face ((t (:foreground "gray60" :background "gray10"))))
   '(elscreen-tab-other-screen-face ((t (:foreground "gray60" :background "gray10")))))

  (elscreen-start))

(provide 'my-elscreen)
