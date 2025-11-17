(org-babel-load-file
 (expand-file-name  "config.org"   user-emacs-directory))


;; --- MY CONFIG ---

;; ;; Add .emacs.d to load path
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; ;; Set up melpa
;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/"))
;; (package-initialize)
;; (package-refresh-contents)

;; ;; Download Evil
;; (unless (package-installed-p 'evil)
;;   (package-install 'evil))

;; ;; Enable Evil
;; (require 'evil)
;; (evil-mode 1)
;; ;; Enable evil-collection
;; (evil-collection-init)

;; ;; Theming
;; (load-theme 'quasi-monochrome t)
;; (menu-bar-mode -1)
;; (scroll-bar-mode -1)
;; (tool-bar-mode -1)
;; (setq display-line-numbers 'relative)
;; (global-display-line-numbers-mode)

;; ;; load org-bullets
;; (require 'org-bullets)
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(magit-bury-buffer-function 'magit-restore-window-configuration)
;;  '(package-selected-packages '(evil-collection magit which-key evil)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; ;; load which-key for keybinding completion / help
;; (require 'which-key)
;; (which-key-mode)

;; ;;---------------------------------------
;; ;; Keybindings

;; (require 'cc-mode)
;; (define-key c-mode-map "\C-c\C-c" 'compile)
;; (define-key c-mode-map "\C-c\C-f" 'comment-line)
;; (define-key c-mode-map "\C-c\C-d" 'comment-region)
;; ;; C-h m to list keybindings of current buffer
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(magit-bury-buffer-function 'magit-restore-window-configuration)
;; '(package-selected-packages '(hl-todo evil-collection magit which-key evil)))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(magit-bury-buffer-function 'magit-restore-window-configuration)
 ;;'(package-selected-packages '(gh-md 0blayout evil-collection magit which-key evil)))
 ;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; )
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(magit-bury-buffer-function 'magit-restore-window-configuration)
;; '(package-selected-packages
;;   '(evil evil-collection haskell-mode magit move-text rainbow-mode
;;	  rust-mode which-key zig-mode)))
;;(custom-set-faces
;; ;; custom-set-faces was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; )
