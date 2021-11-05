;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; EMACS INITIALIZATION FILE ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

;; For package installation
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enter debugger if an error is signaled.
(setq debug-on-error t)

(require 'use-package)
(setq use-package-always-ensure t)

;; Get the rest of the configuration from file myinit.org
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("h:/GTD/refile.org" "h:/GTD/todo.org" "h:/GTD/auswertung.org" "h:/GTD/journal_2021.org" "h:/GTD/timesheet_2021.org" "h:/GTD/ausbildung.org" "h:/GTD/verwaltung.org" "h:/GTD/ARCHIVES/journal_2016.org" "h:/GTD/ARCHIVES/journal_2017.org" "h:/GTD/ARCHIVES/journal_2018.org" "h:/GTD/ARCHIVES/journal_2019.org" "h:/GTD/ARCHIVES/journal_2020.org")))
 '(org-html-table-default-attributes
   (quote
    (:border "2" :cellspacing "0" :cellpadding "6" :rules "groups" :frame "hsides" :class "center")))
 '(org-src-preserve-indentation nil)
 '(package-selected-packages
   (quote
    (magit matlab-mode zerodark-theme color-theme-modern elpy org-ref org try org-edna htmlize))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
