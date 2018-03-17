(dolist (mode '(c++-mode c-mode))
  (spacemacs/declare-prefix-for-mode mode "m=" "format")
  (spacemacs/declare-prefix-for-mode mode "mg" "goto")
  (spacemacs/declare-prefix-for-mode mode "mr" "rtags")
  (spacemacs/set-leader-keys-for-major-mode mode
    "f" 'c-mark-function
    ;; "cc" 'helm-make-projectile
    "=b" 'clang-format-buffer
    "=f" 'bt-laser/clang-format-function
    "=r" 'bt-laser/clang-format-region
    "ga" 'projectile-find-other-file
    "gA" 'projectile-find-other-file-other-window
    "gg" 'rtags-find-symbol-at-point
    "gu" 'rtags-find-references-at-point
    "rv" 'rtags-find-virtuals-at-point
    ;; "rV" 'rtags-print-enum-value-at-point
    ;; "r/" 'rtags-find-all-references-at-point
    ;; "r>" 'rtags-find-symbol
    ;; "r<" 'rtags-find-references
    "rp" 'rtags-location-stack-back
    "rn" 'rtags-location-stack-forward
    ;; "rG" 'rtags-guess-function-at-point
    "rP" 'rtags-print-dependencies
    "rE" 'rtags-preprocess-file
    "rR" 'rtags-rename-symbol
    "rt" 'rtags-symbol-type
    "rd" 'rtags-reparse-file
    ;; "rM" 'rtags-symbol-info
    "rs" 'rtags-display-summary
    ;; "rO" 'rtags-goto-offset
    ;; "r;" 'rtags-find-file
    ;; "rF" 'rtags-fixit
    ;; "rL" 'rtags-copy-and-print-current-location
    "rf" 'rtags-fix-fixit-at-point
    ;; "rB" 'rtags-show-rtags-buffer
    ;; "rI" 'rtags-imenu
    ;; "rT" 'rtags-taglist
    "rh" 'rtags-print-class-hierarchy
    "ra" 'rtags-print-source-arguments
    ;; "rj" 'rtags-next-match
    ;; "rk" 'rtags-previous-match
    ))
