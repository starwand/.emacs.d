(require 'use-package)

(use-package omnisharp
  :diminish omnisharp-mode
  :hook ((csharp-mode . omnisharp-mode))
  )

(provide 'my-csharp)
