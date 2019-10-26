(use-package rainbow-delimiters
  :hook ((c-mode c++-mode) .
         (lambda () (rainbow-delimiters-mode)))
  :config
  ;; Configure rainbow color nicely: https://qiita.com/gnrr/items/8f9efd5ced058e576f5e
  (setq rainbow-delimiters-outermost-only-face-count 1)
  (set-face-foreground 'rainbow-delimiters-depth-1-face "#9a4040")
  (set-face-foreground 'rainbow-delimiters-depth-2-face "#ff5e5e")
  (set-face-foreground 'rainbow-delimiters-depth-3-face "#ffaa77")
  (set-face-foreground 'rainbow-delimiters-depth-4-face "#dddd77")
  (set-face-foreground 'rainbow-delimiters-depth-5-face "#80ee80")
  (set-face-foreground 'rainbow-delimiters-depth-6-face "#66bbff")
  (set-face-foreground 'rainbow-delimiters-depth-7-face "#da6bda")
  (set-face-foreground 'rainbow-delimiters-depth-8-face "#afafaf")
  (set-face-foreground 'rainbow-delimiters-depth-9-face "#f0f0f0"))

(provide 'my-rainbow-delimiters)
