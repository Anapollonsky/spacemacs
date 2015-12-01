;;; packages.el --- NAME Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar other-packages
  '(
    pdf-tools
    sx
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar other-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function NAME/init-<package-name>
;;
;; (defun NAME/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun other/init-pdf-tools ()
  "Initialize pdf-tools"
  (use-package pdf-tools 
    :init (when (not (eq system-type 'windows-nt)) (pdf-tools-install))
    :config
    (progn
      ;; Navigate with hjkl in insert-state
      (define-key pdf-view-mode-map "k" 'pdf-view-scroll-up-or-next-page)
      (define-key pdf-view-mode-map "j" 'pdf-view-scroll-down-or-previous-page)
      (define-key pdf-view-mode-map "h" 'pdf-view-previous-page-command)
      (define-key pdf-view-mode-map "l" 'pdf-view-next-page-command )
      ))) 

(defun other/init-sx ()
  (use-package sx))



