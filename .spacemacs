;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers '(colors fasd git perspectives slime python
                                              c-c++ cscope regex extra-langs haskell
                                              auto-completion syntax-checking org
                                              ztree mail chat other erc emacs-lisp shell
                                               gtags ibuffer games xkcd pandoc rust semantic sql
                                              search-engine)

   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()

   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(evil-search-highlight-persist vi-tilde-fringe)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (progn
    
    ;; theme
    (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes")

    (setq-default
     ;; Specify the startup banner. Default value is `official', it displays
     ;; the official spacemacs logo. An integer value is the index of text
     ;; banner, `random' chooses a random text banner in `core/banners'
     ;; directory. A string value must be a path to a .PNG file.
     ;; If the value is nil then no banner is displayed.
     ;; dotspacemacs-startup-banner 'official
     dotspacemacs-startup-banner 'official
     ;; List of themes, the first of the list is loaded when spacemacs starts.
     ;; Press <SPC> T n to cycle to the next theme in the list (works great
     ;; with 2 themes variants, one dark and one light)
     dotspacemacs-themes '(apples
                           leuven
                           monokai
                           solarized-dark
                           zenburn)
     ;; If non nil the cursor color matches the state color.
     dotspacemacs-colorize-cursor-according-to-state t
     ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
     ;; size to make separators look not too crappy.
     dotspacemacs-default-font '("DejaVu Sans Mono"
                                 :size 15
                                 :weight normal
                                 :width normal
                                 :powerline-scale 1.1)
     ;; The leader key
     dotspacemacs-leader-key "SPC"
     ;; The leader key accessible in `emacs state' and `insert state'
     dotspacemacs-emacs-leader-key "M-m"
     ;; Major mode leader key is a shortcut key which is the equivalent of
     ;; pressing `<leader> m`. Set it to `nil` to disable it.
     dotspacemacs-major-mode-leader-key ","
     ;; Major mode leader key accessible in `emacs state' and `insert state'
     dotspacemacs-major-mode-emacs-leader-key "C-M-m"
     ;; The command key used for Evil commands (ex-commands) and
     ;; Emacs commands (M-x).
     ;; By default the command key is `:' so ex-commands are executed like in Vim
     ;; with `:' and Emacs commands are executed with `<leader> :'.
     dotspacemacs-command-key ":"
     ;; If non nil then `ido' replaces `helm' for some commands. For now only
     ;; `find-files' (SPC f f) is replaced.
     dotspacemacs-use-ido nil
     ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
     ;; several times cycle between the kill ring content.
     dotspacemacs-enable-paste-micro-state t
     ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
     ;; the commands bound to the current keystrokes.
     dotspacemacs-guide-key-delay 0.4
     ;; If non nil a progress bar is displayed when spacemacs is loading. This
     ;; may increase the boot time on some systems and emacs builds, set it to
     ;; nil ;; to boost the loading time.
     dotspacemacs-loading-progress-bar t
     ;; If non nil the frame is fullscreen when Emacs starts up.
     ;; (Emacs 24.4+ only)
     dotspacemacs-fullscreen-at-startup nil
     ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
     ;; Use to disable fullscreen animations in OSX."
     dotspacemacs-fullscreen-use-non-native nil
     ;; If non nil the frame is maximized when Emacs starts up.
     ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
     ;; (Emacs 24.4+ only)
     dotspacemacs-maximized-at-startup nil
     ;; A value from the range (0..100), in increasing opacity, which describes
     ;; the transparency level of a frame when it's active or selected.
     ;; Transparency can be toggled through `toggle-transparency'.
     dotspacemacs-active-transparency 97
     ;; A value from the range (0..100), in increasing opacity, which describes
     ;; the transparency level of a frame when it's inactive or deselected.
     ;; Transparency can be toggled through `toggle-transparency'.
     dotspacemacs-inactive-transparency 97
     ;; If non nil unicode symbols are displayed in the mode line.
     dotspacemacs-mode-line-unicode-symbols t
     ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
     ;; scrolling overrides the default behavior of Emacs which recenters the
     ;; point when it reaches the top or bottom of the screen.
     dotspacemacs-smooth-scrolling t
     ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
     dotspacemacs-smartparens-strict-mode nil
     ;; Select a scope to highlight delimiters. Possible value is `all',
     ;; `current' or `nil'. Default is `all'
     dotspacemacs-highlight-delimiters 'all
     ;; If non nil advises quit functions to keep server open when quitting.
     dotspacemacs-persistent-server nil
     ;; List of search tool executable names. Spacemacs uses the first installed
     ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
     dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
     ;; The default package repository used if no explicit repository has been
     ;; specified with an installed package.
     ;; Not used for now.
     dotspacemacs-default-package-repository nil)
    ;; User initialization goes here

    )
  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (progn
    ;; identification
    (setf user-full-name "Andrew Apollonsky")
    (setf user-mail-address "Anapollonsky@gmail.com")

    ;; browser
    (setq browse-url-generic-program (or (executable-find "firefox")
                                         (executable-find "google-chrome-stable")
                                         (executable-find "chromium")))
    (setq browse-url-browser-function 'browse-url-generic)

    ;; no dialog boxes
    (setq use-dialog-box nil)

    ;; UTF-8 as default
    (set-terminal-coding-system 'utf-8)
    (set-keyboard-coding-system 'utf-8)
    (set-language-environment "UTF-8")
    (prefer-coding-system 'utf-8)

    ;; Backups
    ;; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files
    (defvar --backup-directory (concat user-emacs-directory "backups"))
    (if (not (file-exists-p --backup-directory))
        (make-directory --backup-directory t))
    (setq backup-directory-alist `(("." . ,--backup-directory)))
    (setq make-backup-files t    ; backup of a file the first time it is saved.
          backup-by-copying t    ; don't clobber symlinks
          version-control t      ; version numbers for backup files
          delete-old-versions t  ; delete excess backup files silently
          delete-by-moving-to-trash t
          kept-old-versions 6    ; oldest versions to keep when a new numbered backup is made
          kept-new-versions 9    ; newest versions to keep when a new numbered backup is made
          auto-save-default t    ; auto-save every buffer that visits a file
          auto-save-timeout 20   ; number of seconds idle time before auto-save (default: 30)
          auto-save-interval 200 ; number of keystrokes between auto-saves (default: 300)
          vc-make-backup-files t)

    ;; History
    (setq savehist-file "~/.emacs.d/savehist")
    (savehist-mode 1)
    (setq history-length t)
    (setq history-delete-duplicates t)
    (setq savehist-save-minibuffer-history 1)
    (setq savehist-additional-variables
          '(kill-ring
            search-ring
            regexp-search-ring))

    ;; Undo-Tree
    (setq undo-tree-auto-save-history t)
    (setq undo-tree-visualizer-timestamps t)
    (define-key evil-normal-state-map "U" 'undo-tree-redo)

    ;; Keybinding remapping
    (evil-leader/set-key "fF" 'sudo-edit)

    ;; org-babel
    (org-babel-do-load-languages ;; Parse babel blocks for these languages
     'org-babel-load-languages
     '((C . t)
       (python . t)
       (lisp . t)
       (latex . t)
       (sh . t)
       ))
    (setq org-src-fontify-natively t)
    (add-to-list 'org-latex-packages-alist '("" "minted")) ;; Add minted to the defaults packages to include when exporting.
    (setq org-latex-listings 'minted)  ;; Tell the latex export to use the minted package for source code coloration.
    (setq org-latex-pdf-process ;; Let the exporter use the -shell-escape option to let latex execute external programs.
          '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

    ;; org-capture
    (setq org-directory "~/org")
    (setq org-default-notes-file (concat org-directory "/notes.org"))
    (evil-leader/set-key "ooc" 'org-capture)
    (setq org-capture-templates
          '(("t" "Todo" entry (file+headline (concat org-directory "/notes.org") "Tasks")
             "** TODO %?\n %i\n")
            ("l" "Link" plain (file+headline (concat org-directory "/notes.org") "Links")
             "- %?\n %x\n")
            ("q" "Quick Note" plain (file+headline (concat org-directory "/notes.org") "Quick Notes")
             "+ %?\n %i\n")))
    (setq org-agenda-files '("~/org/agenda.org" "~/org/notes.org"))

    ;; whitespace
    (evil-leader/set-key "ofw" 'fixup-whitespace)
    (evil-leader/set-key "ofl" 'delete-blank-lines)
    (setq whitespace-style
          '(face tabs spaces newline space-mark tab-mark newline-mark indentation space-after-tab space-before-tab))
    (setq whitespace-display-mappings
          '(
            ;; (space-mark 32 [183] [46]) ; normal space
            (newline-mark 10 [182 10]) ; newlne
            (tab-mark 9 [9655 9] [92 9]) ; tab
            ))
    (when (display-graphic-p) (spacemacs/toggle-whitespace-globally))

    ;; highlighting
    (evil-leader/set-key "ohs" 'hlt-highlight-symbol)
    (evil-leader/set-key "ohc" 'hlt-unhighlight-all-prop)

    ;; centered cursor
    (spacemacs/toggle-centered-point-globally)

    ;; indent guide
    (setq indent-guide-recursive t
          indent-guide-char "┊")

    ;; Replace insert with emacs state
    (spacemacs/toggle-holy-mode)

    ;; Custom state colors
    (setq evil-normal-state-cursor '("Red" box))
    (spacemacs/defface-state-color 'normal "Red")
    (setq evil-emacs-state-cursor '("tomato" (bar . 2)))
    (spacemacs/defface-state-color 'emacs "tomato")
    (setq evil-visual-state-cursor '("chocolate" box))
    (spacemacs/defface-state-color 'visual "chocolate")
    (setq evil-iedit-state-cursor '("SpringGreen4" box))
    (spacemacs/defface-state-color 'iedit "SpringGreen4")
    (setq evil-iedit-insert-state-cursor '("SpringGreen3" (bar . 2)))
    (spacemacs/defface-state-color 'iedit-insert "SpringGreen3")

    ;; xml
    ;; http://stackoverflow.com/questions/12492/pretty-printing-xml-files-on-emacs 
    (defun pretty-print-xml-region (begin end)
      "Pretty format XML markup in region. You need to have nxml-mode
       http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do
       this.  The function inserts linebreaks to separate tags that have
       nothing but whitespace between them.  It then indents the markup
       by using nxml's indentation rules."
      (interactive "r")
      (save-excursion
        (nxml-mode)
        (goto-char begin)
        (while (search-forward-regexp "\>[ \\t]*\<" nil t) 
          (backward-char) (insert "\n"))
        (indent-region begin end))
      (message "Ah, much better!"))

    ;; face
    ;; http://stackoverflow.com/questions/1242352/get-font-face-under-cursor-in-emacs
    (defun what-face (pos)
      "Get the face name at current pointer position"
      (interactive "d")
      (let ((face (or (get-char-property (point) 'read-face-name)
                      (get-char-property (point) 'face))))
        (if face (message "Face: %s" face) (message "No face at %d" pos))))   

    ;; Send email
    (setq send-mail-function 'smtpmail-send-it)
    (setq smtpmail-stream-type 'ssl)
    (setq smtpmail-smtp-server "smtp.gmail.com")
    (setq smtpmail-smtp-service 465)
    
    ;; mu4e
    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
    (use-package mu4e)

    (setq
     mu4e-maildir       "~/.mail/gmail"   ;; top-level Maildir
     mu4e-sent-folder   "/Sent"       ;; folder for sent messages
     mu4e-drafts-folder "/Drafts"     ;; unfinished messages
     mu4e-trash-folder  "/trash"      ;; trashed messages
     mu4e-refile-folder "/archive"    ;; saved messages
     mu4e-compose-signature "Andrew Apollonsky"
     mu4e-get-mail-command "mbsync gmail"
     mu4e-headers-skip-duplicates t) 

    (evil-leader/set-key "om" 'mu4e)

    ;; ztree
    (evil-leader/set-key "ozt" 'ztree-dir)
    (evil-leader/set-key "ozd" 'ztree-diff)

    ;; syntax checking
    
    ;; http://stackoverflow.com/questions/11259570/integrate-cppcheck-with-emacs
    (defun run-cppcheck (file)
      "Run the cppcheck executable on a file/directory, with the output going
       to a compilation buffer. Requires cppcheck."
      (interactive
       (list (read-file-name "File to check: " buffer-file-name)))
      (compile
       (concat "cppcheck --template='{file}:{line}:{severity}:{message}' --enable=missingInclude,performance,warning " file "; exit -1")))

    (defun run-flake8(file)
      "Run the flake8 executable on a file/directory, with the output going
       to a compilation buffer. Requires flake8, available on pypi."
      (interactive
       (list (read-file-name "File to check: " buffer-file-name)))
      (compile (concat "flake8 " file)))

    (defun run-pylint(file)
      "Run the pylint executable on a file/directory, with the output going
       to a compilation buffer. Requires pylint, available on pypi."
      (interactive
       (list (read-file-name "File to check: " buffer-file-name)))
      (compile (concat "pylint " file)))

    (evil-leader/set-key "ocp" 'run-flake8) 
    (evil-leader/set-key "ocC" 'run-cppcheck) 
    (evil-leader/set-key "ocP" 'run-pylint) 

    ))
