(require 'use-package)

(use-package visual-regexp
  :defer t
  :bind (("M-%" . vr/query-replace)))

(provide 'my-visual-regexp)
