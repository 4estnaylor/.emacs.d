



;; personal functions

;; make daily habit




;;hotkeys
(global-set-key (kbd "<f6>") 'org-capture) 
(global-set-key (kbd "M-y") 'browse-kill-ring) ;; need to include package
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-c m") 'magit-status)
(global-set-key (kbd "C-c i") 'org-agenda-clock-in)
(global-set-key (kbd "C-c o") 'org-agenda-clock-out)



;; register important files
(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?g '(file . "~/.emacs.d/GTD/gtd.org"))
(set-register ?p '(file . "~/.emacs.d/GTD/projects.org"))
(set-register ?h '(file . "~/.emacs.d/GTD/habits.org"))
(set-register ?c '(file . "~/.emacs.d/GTD/calendar.org"))
(set-register ?n '(file . "~/.emacs.d/GTD/next.org"))
(set-register ?r '(file . "~/.emacs.d/GTD/reference.org"))

;; minimal interface
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)          ; disable the menu bar


;; set up melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;   set up org mode
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-span 1)
(setq org-habit-show-habits-only-for-today nil)
(setq org-agenda-repeating-timestamp-show-all nil)
(setq org-log-into-drawer 1) ;; automatically logs state changes and notes into LOGBOOK drawer



;; ;; set up ido mode everywhere
;; ;; (setq ido-enable-flex-matching t)
;; ;; (setq ido-everywhere t)
;; ;; (ido-mode 1)

;; ;; start ivy mode
;; (ivy-mode 1)
;; (global-set-key (kbd "C-x b") 'ivy-switch-buffer)

;; ;;flychekc
;; (add-hook 'after-init-hook #'global-flycheck-mode)

;; ;; projectile mode
;; (projectile-mode +1)
;; (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;; set fram transparency and maximize windows my default
  (set-frame-parameter (selected-frame) 'alpha '(90 . 90))
  (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
  (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))



;; parenthesis
(smartparens-mode 1)
(rainbow-delimiters-mode 1)



;; org capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Org/main.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/Org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
	("Q" "quotation" entry (file+headline "~/Org/library.org" "Quotes")
         "* %?\nEntered on %U\n  %i\n  %a")
	))

;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;

;; personal functions
(defun org-habit-create (HABIT INTERVAL)
  "makes a new HABIT in an org mode file "
  (interactive "Mhabit: \nMinterval: ")
  (insert "** R " HABIT)
  (newline)
  (insert "SCHEDULED: ")
  (org-date-from-calendar)
  (backward-delete-char-untabify 1)
  (insert " .+")
  (insert INTERVAL)
  (insert ">")
  (newline)
  (insert ":PROPERTIES:")
  (newline)
  (insert ":STYLE: habit")
  (newline)
  (insert ":END:")
  (newline)
  (insert ":LOGBOOK:")
  (newline)
  (insert ":END:")
  )

(defun org-drill-new-table (VOCAB_SECTION_NAME)
  "Makes format for new table for org drill mode under VOCAB_SECTION_NAME"
  (interactive "sVOCAB Section Name: ")
  (insert "** ")
  (insert VOCAB_SECTION_NAME)
  (newline)
  (insert-file "~/Org/templates/org-drill-new-table-template.txt")
  )


;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;
;; ;;

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default default default italic underline success warning error])
;;  '(ansi-color-names-vector
;;    ["#2b303b" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#c0c5ce"])
;;  '(custom-enabled-themes '(doom-palenight))
;;  '(custom-safe-themes
;;    '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "7a994c16aa550678846e82edc8c9d6a7d39cc6564baaaacc305a3fdc0bd8725f" "6b80b5b0762a814c62ce858e9d72745a05dd5fc66f821a1c5023b4f2a76bc910" "6084dce7da6b7447dcb9f93a981284dc823bab54f801ebf8a8e362a5332d2753" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "4f01c1df1d203787560a67c1b295423174fd49934deb5e6789abd1e61dba9552" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
;;  '(fci-rule-color "#65737E")
;;  '(hl-todo-keyword-faces
;;    '(("TODO" . "#dc752f")
;;      ("NEXT" . "#dc752f")
;;      ("THEM" . "#2d9574")
;;      ("PROG" . "#3a81c3")
;;      ("OKAY" . "#3a81c3")
;;      ("DONT" . "#f2241f")
;;      ("FAIL" . "#f2241f")
;;      ("DONE" . "#42ae2c")
;;      ("NOTE" . "#b1951d")
;;      ("KLUDGE" . "#b1951d")
;;      ("HACK" . "#b1951d")
;;      ("TEMP" . "#b1951d")
;;      ("FIXME" . "#dc752f")
;;      ("XXX+" . "#dc752f")
;;      ("\\?\\?\\?+" . "#dc752f")))
;;  '(initial-buffer-choice "~/org.org")
;;  '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#D08770"))
;;  '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#A3BE8C"))
;;  '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#4f5b66"))
;;  '(objed-cursor-color "#BF616A")
;;  '(org-agenda-custom-commands
;;    '(("n" "Agenda and all TODOs"
;;       ((agenda "" nil)
;;        (tags "STYLE=\"habit\"" nil))
;;       nil)))
;;  '(org-agenda-files '("~/org.org"))
;;  '(org-capture-templates
;;    '(("q" "Quotation" entry
;;       (file "~/org/quotations.org")
;;       (file "~/org/tpl-test.txt"))))
;;  '(org-enforce-todo-checkbox-dependencies t)
;;  '(org-log-into-drawer t)
;;  '(org-modules
;;    '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
;;  '(org-support-shift-select t)
;;  '(package-selected-packages
;;    '(magit org-drill doom-themes lsp-mode flycheck projectile browse-kill-ring ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree toc-org spacemacs-theme spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-superstar org-plus-contrib org-journal-list org-journal org-drill-table org-bullets org-beautify-theme open-junk-file nov neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy indent-guide ido-grid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump doom-modeline diminish define-word command-log-mode column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))
;;  '(pdf-view-midnight-colors (cons "#c0c5ce" "#2b303b"))
;;  '(rustic-ansi-faces
;;    ["#2b303b" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#c0c5ce"])
;;  '(vc-annotate-background "#2b303b")
;;  '(vc-annotate-color-map
;;    (list
;;     (cons 20 "#A3BE8C")
;;     (cons 40 "#bbbe86")
;;     (cons 60 "#d3be80")
;;     (cons 80 "#ECBE7B")
;;     (cons 100 "#e2ab77")
;;     (cons 120 "#d99973")
;;     (cons 140 "#D08770")
;;     (cons 160 "#cc8294")
;;     (cons 180 "#c97db8")
;;     (cons 200 "#c678dd")
;;     (cons 220 "#c370b6")
;;     (cons 240 "#c16890")
;;     (cons 260 "#BF616A")
;;     (cons 280 "#a35f69")
;;     (cons 300 "#875e68")
;;     (cons 320 "#6b5c67")
;;     (cons 340 "#65737E")
;;     (cons 360 "#65737E")))
;;  '(vc-annotate-very-old-color nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-palenight))
 '(custom-safe-themes
   '("c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" default))
 '(initial-buffer-choice "~/.emacs.d/GTD/gtd.org")
 '(org-agenda-files
   '("~/.emacs.d/GTD/projects.org" "~/.emacs.d/GTD/calendar.org" "~/.emacs.d/GTD/habits.org" "~/.emacs.d/Org/main.org" "~/Org/main.org"))
 '(org-capture-templates
   '(("Q" "Quotations" entry
      (file "\"~/Org/libary.org\"")
      "\"testing 123\"")) t)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(package-selected-packages
   '(rainbow-delimiters smartparens doom-themes org-drill-table org-drill)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
