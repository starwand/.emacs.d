(require 'use-package)

(setq native-comp-async-report-warnings-errors nil)
(native-compile-async user-emacs-directory 'recursively)

(provide 'my-gcc-emacs)
