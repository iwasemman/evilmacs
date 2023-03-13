;; Set up MELPA so you can download evil mode
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Run this once to update repo
;; Or manualy run " M-x package-refresh-contents " (M-x is usually alt-x)
;; (package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Avoid cluttered files
;; You can change on where directory you want to save the backups
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq auto-save-default nil)
(setq create-lockfiles nil)
