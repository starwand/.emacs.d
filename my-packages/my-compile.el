(defhydra hydra-compile (:color teal :hint nil)
  "[_c_] compile [_p_] projectile-compile"
  ("c" compile)
  ("p" projectile-compile-project))

(provide 'my-compile)
