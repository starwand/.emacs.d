(use-package magit
  :chords (("mg" . magit-status)))

(use-package git-timemachine)

(use-package git-gutter-fringe
  :diminish git-gutter-mode
  :config
  (progn
    (setq-default left-fringe-width  20)
    (setq-default right-fringe-width 20)
    (fringe-helper-define 'git-gutter-fr:added nil
			  ".XXXXXX."
			  "XX....XX"
			  "X......X"
			  "X......X"
			  "XXXXXXXX"
			  "XXXXXXXX"
			  "X......X"
			  "X......X")
    (fringe-helper-define 'git-gutter-fr:deleted nil
			  "XXXXXX.."
			  "XX....X."
			  "XX.....X"
			  "XX.....X"
			  "XX.....X"
			  "XX.....X"
			  "XX....X."
			  "XXXXXX..")
    (fringe-helper-define 'git-gutter-fr:modified nil
			  "XXXXXXXX"
			  "X..XX..X"
			  "X..XX..X"
			  "X..XX..X"
			  "X..XX..X"
			  "X..XX..X"
			  "X..XX..X"
			  "X..XX..X")
    (set-face-foreground 'git-gutter-fr:modified "yellow")
    (set-face-foreground 'git-gutter-fr:added    "green")
    (set-face-foreground 'git-gutter-fr:deleted  "magenta")
    (global-git-gutter-mode t)))

(provide 'my-git)
