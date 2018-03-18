(dolist (mode '(c++-mode c-mode))
  (spacemacs/declare-prefix-for-mode mode "m=" "format")
  (spacemacs/declare-prefix-for-mode mode "mg" "goto")
  (spacemacs/declare-prefix-for-mode mode "mr" "rtags")
  (spacemacs/set-leader-keys-for-major-mode mode
    "f" 'c-mark-function
    "=b" 'clang-format-buffer
    "=f" 'bt-laser/clang-format-function
    "=r" 'bt-laser/clang-format-region
    "ga" 'projectile-find-other-file
    "gA" 'projectile-find-other-file-other-window
    "gg" 'rtags-find-symbol-at-point
    "gu" 'rtags-find-references-at-point
    "rv" 'rtags-find-virtuals-at-point
    "ri" 'rtags-check-includes
    "rp" 'rtags-location-stack-back
    "rn" 'rtags-location-stack-forward
    "rP" 'rtags-print-dependencies
    "rE" 'rtags-preprocess-file
    "rR" 'rtags-rename-symbol
    "rt" 'rtags-symbol-type
    "rd" 'rtags-reparse-file
    "rs" 'rtags-display-summary
    "rf" 'rtags-fix-fixit-at-point
    "rh" 'rtags-print-class-hierarchy
    "ra" 'rtags-print-source-arguments
    ))
