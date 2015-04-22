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

(defvar cscope-packages
  '(
   xcscope 
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar cscope-excluded-packages '()
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

(defun cscope/init-xcscope ()
  "Initialize xcscope"
  (use-package xcscope 
    :config
    (progn
      (setq cscope-initial-directory "/vobs/linuxrru")
      (evil-leader/set-key "oss" 'cscope-find-this-symbol)
      (evil-leader/set-key "osI" 'cscope-index-files)
      (evil-leader/set-key "ost" 'cscope-find-this-text-string)
      (evil-leader/set-key "osf" 'cscope-find-this-file)
      (evil-leader/set-key "osd" 'cscope-find-global-definition)
      (evil-leader/set-key "osu" 'cscope-pop-mark)
      (evil-leader/set-key "osa" 'cscope-set-initial-directory)
      (evil-leader/set-key "osA" 'cscope-unset-initial-directory)
      ;; (define-key evil-normal-state-map "q" 'delete-window)
      )))

