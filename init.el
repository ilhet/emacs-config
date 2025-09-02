;; disable startup message
(setq inhibit-startup-message t)

(scroll-bar-mode -1)    ;disable scroll bar
(tool-bar-mode -1)      ;disable tool bar
(tooltip-mode -1)       ;disable tooltip
(menu-bar-mode -1)      ;disable menu bar

(load-theme 'modus-vivendi)     ;set theme

(transient-mark-mode 1)

;; initialize package sources
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; list of used packages
(use-package auctex)
(use-package org-roam)
(use-package yasnippet)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auctex org-roam yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;auctex customization
(setq org-latex-create-formula-image-program 'dvipng)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;;org-roam customization
(setq org-roam-directory (file-truename "~/org"))
(org-roam-db-autosync-mode)

;;org-mode customization
(setq org-agenda-files '("~/org"))

;;custom keybinds
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
