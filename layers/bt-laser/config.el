(c-add-style "clang-format"
             '("bsd"
               (c-basic-offset . 2)     ; Guessed value
               (c-offsets-alist
                (access-label . *)      ; Guessed value
                (block-close . 0)       ; Guessed value
                (case-label . +)        ; Guessed value
                (class-close . 0)       ; Guessed value
                (class-open . 0)        ; Guessed value
                (defun-block-intro . +) ; Guessed value
                (defun-close . 0)       ; Guessed value
                (defun-open . 0)        ; Guessed value
                (else-clause . 0)       ; Guessed value
                (inclass . +)           ; Guessed value
                (inline-close . 0)      ; Guessed value
                (innamespace . 0)       ; Guessed value
                (member-init-cont . 0)  ; Guessed value
                (member-init-intro . +) ; Guessed value
                (namespace-close . 0)   ; Guessed value
                (namespace-open . 0)    ; Guessed value
                (statement . 0)         ; Guessed value
                (statement-block-intro . +) ; Guessed value
                (statement-case-open . 0) ; Guessed value
                (statement-cont . ++)   ; Guessed value
                (stream-op . 3)         ; Guessed value
                (substatement-open . 0) ; Guessed value
                (topmost-intro . 0)     ; Guessed value
                )))

(setq-default c-default-style '((awk-mode . "awk")
                                (other . "clang-format")))
