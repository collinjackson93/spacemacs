(dolist (mode '(c++-mode c-mode))
  (spacemacs/declare-prefix-for-mode mode "mc" "compile")
  (spacemacs/declare-prefix-for-mode mode "m=" "format")
  (spacemacs/declare-prefix-for-mode mode "mg" "goto")
  (spacemacs/declare-prefix-for-mode mode "mr" "rtags")
  (spacemacs/set-leader-keys-for-major-mode mode
    "f" 'c-mark-function
    "cc" 'helm-make-projectile
    "=b" 'clang-format-buffer
    "=f" 'bt-laser/clang-format-function
    "=r" 'bt-laser/clang-format-region
    "ga" 'projectile-find-other-file
    "gA" 'projectile-find-other-file-other-window
    "r." 'rtags-find-symbol-at-point
    "r," 'rtags-find-references-at-point
    "rv" 'rtags-find-virtuals-at-point
    "rV" 'rtags-print-enum-value-at-point
    "r/" 'rtags-find-all-references-at-point
    "r>" 'rtags-find-symbol
    "r<" 'rtags-find-references
    "r[" 'rtags-location-stack-back
    "r]" 'rtags-location-stack-forward
    "rG" 'rtags-guess-function-at-point
    "rP" 'rtags-print-dependencies
    "rE" 'rtags-preprocess-file
    "rR" 'rtags-rename-symbol
    "rM" 'rtags-symbol-info
    "rS" 'rtags-display-summary
    "rO" 'rtags-goto-offset
    "r;" 'rtags-find-file
    "rF" 'rtags-fixit
    "rL" 'rtags-copy-and-print-current-location
    "rX" 'rtags-fix-fixit-at-point
    "rB" 'rtags-show-rtags-buffer
    "rI" 'rtags-imenu
    "rT" 'rtags-taglist
    "rh" 'rtags-print-class-hierarchy
    "ra" 'rtags-print-source-arguments
    "rj" 'rtags-next-match
    "rk" 'rtags-previous-match))
