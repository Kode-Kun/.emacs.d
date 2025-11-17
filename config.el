(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Set up melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;;(package-refresh-contents)

(ido-mode 1)
(ido-everywhere 1)

(global-auto-revert-mode 1)
(auto-revert-mode 1)

(setq dired-dwim-target t)
;; Auto-refresh dired on file change
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
;; Enable Evil
(require 'evil)
(evil-mode 1)
;; Enable evil-collection
(evil-collection-init)

(load-file "~/.emacs.d/kode-mode.el")

;; Theming
(load-theme 'quasi-monochrome t)
(add-to-list 'default-frame-alist '(font . "DejaVuSansMono-15"))
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

; load org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-bury-buffer-function 'magit-restore-window-configuration)
 '(package-selected-packages '(evil-collection magit which-key evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load which-key for keybinding completion / help
(require 'which-key)
(which-key-mode)

(require 'hl-todo)
(global-hl-todo-mode)

(require 'rainbow-mode)
(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(my-global-rainbow-mode 1)

;;(define-key hl-todo-mode-map "\C-c n" 'hl-todo-previous)
;;(define-key hl-todo-mode-map "\C-c p" 'hl-todo-previous)
