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
;;(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
