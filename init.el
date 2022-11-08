;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; EMACS INITIALIZATION FILE ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Enter debugger if an error is signaled.
(setq debug-on-error t)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; save packages to this directory
(setq package-user-dir "~/.emacs.d/packages")

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Get the rest of the configuration from file myinit.org
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c0f4b66aa26aa3fded1cbefe50184a08f5132756523b640f68f3e54fd5f584bd" "e8830baf7d8757f15d9d02f9f91e0a9c4732f63c3f7f16439cc4fb42a1f2aa06" default))
 '(package-selected-packages '(ivy org try org-edna htmlize)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
