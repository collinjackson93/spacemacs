;;; packages.el --- bt-laser layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:Collin Jackson <cjackson@belvederetrading.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; Briefly, each package to be installed or configured by this layer should be
;; added to `bt-laser-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `bt-laser/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `bt-laser/pre-init-PACKAGE' and/or
;;   `bt-laser/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst bt-laser-packages
  '(cc-mode
    clang-format
    cmake-mode
    company
    flycheck
    flycheck-clang-analyzer
    modern-cpp-font-lock
    ;; Mark the location of these so they get picked up when a new rtags version is installed
    (company-rtags :location "/usr/local/share/emacs/site-lisp/rtags")
    (flycheck-rtags :location "/usr/local/share/emacs/site-lisp/rtags")
    (ivy-rtags :location "/usr/local/share/emacs/site-lisp/rtags")
    (rtags :location "/usr/local/share/emacs/site-lisp/rtags")))

(defun bt-laser/init-cc-mode ()
  (use-package cc-mode
    :defer t
    :init
    (progn
      (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)))))

(defun bt-laser/init-clang-format ()
  (use-package clang-format
    :config
    (setq clang-format-style "file")))


(defun bt-laser/init-cmake-mode ()
  (use-package cmake-mode
    :mode (("CMakeLists\\.txt\\'" . cmake-mode) ("\\.cmake\\'" . cmake-mode))))

(defun bt-laser/post-init-company ()
  (use-package company)
  :config
  (add-hook 'c++-mode-hook 'company-mode)
  (add-hook 'c-mode-hook 'company-mode)
  (spacemacs|add-company-hook cmake-mode))

(defun bt-laser/init-company-rtags ()
  (use-package company-rtags
    :config
    (setq rtags-autostart-diagnostics t)
    (rtags-diagnostics)
    (setq rtags-completions-enabled t)
    (push 'company-rtags company-backends)
    (global-company-mode)
    ))

(defun bt-laser/post-init-flycheck ()
  (use-package flycheck
    :config
    (add-hook 'c++-mode-hook 'flycheck-mode)
    (add-hook 'c-mode-hook 'flycheck-mode)))

(defun bt-laser/init-flycheck-rtags ()
  (use-package flycheck-rtags
    :config
    (rtags-set-periodic-reparse-timeout 2.0)
    (add-hook 'c-mode-hook #'my-flycheck-setup)
    (add-hook 'c++-mode-hook #'my-flycheck-setup)))

(defun bt-laser/init-flycheck-clang-analyzer ()
  (use-package flycheck-clang-analyzer
    :ensure t
    :after flycheck
    :config (flycheck-clang-analyzer-setup)))

(defun bt-laser/init-modern-cpp-font-lock ()
  (use-package modern-cpp-font-lock
    :config
    (modern-c++-font-lock-global-mode t)))

(defun bt-laser/init-ivy-rtags ()
  (use-package ivy-rtags))

(defun bt-laser/init-rtags ()
  (use-package rtags
    :config
    (setq rtags-suspend-during-compilation t)
    (setq rtags-display-result-backend 'ivy)))

(defun my-flycheck-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-check-syntax-automatically nil)
  (setq-local flycheck-highlighting-mode nil))

(defun bt-laser/clang-format-function ()
  (interactive)
  (save-excursion
    (c-mark-function)
    (clang-format (region-beginning) (region-end))
    (deactivate-mark) ; If the function is already formatted, then the mark will show
        (message "Formatted function %s" (c-defun-name))))

(defun bt-laser/clang-format-region ()
  (interactive)
  (save-excursion
    (clang-format (region-beginning) (region-end))
    (deactivate-mark) ; If the region is already formatted, then the mark will show
    (message "Formatted region")))
