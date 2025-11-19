;; My custom minor mode, mainly used for overriding keybindings.

(require 'move-text)
(defvar kode-mode-map (make-sparse-keymap)
  "Keymap for 'kode-mode'.")

(define-minor-mode kode-mode
  "A minor mode to override keybindings in other modes."
  :init-value t
  :lighter " kode-mode"
  :keymap kode-mode-map)

;; The keymaps in `emulation-mode-map-alists' take precedence over
;; `minor-mode-map-alist'
(add-to-list 'emulation-mode-map-alists
             `((kode-mode . ,kode-mode-map)))

(define-globalized-minor-mode global-kode-mode kode-mode kode-mode)

(defun turn-off-kode-mode ()
  "Turn off kode-mode."
  (kode-mode -1))
(add-hook 'minibuffer-setup-hook 'turn-off-kode-mode)

;; here's where my custom keybindings, applied to all buffers, reside.
(define-key kode-mode-map (kbd "C-c C-c") 'compile)
(define-key kode-mode-map (kbd "C-c C-f") 'comment-line)
(define-key kode-mode-map (kbd "C-c C-d") 'uncomment-region)
(define-key kode-mode-map (kbd "C-c C-s") 'comment-indent)
(define-key kode-mode-map (kbd "C-x C-h") 'previous-buffer)
(define-key kode-mode-map (kbd "C-x C-l") 'next-buffer)
(define-key kode-mode-map (kbd "C-x C-s") 'scratch-buffer)

;; unbinding certain annoying keybindings (I use C-x C-c way too often for
;; it to kill emacs if I'm in the wrong evil stage...
(define-key global-map (kbd "C-x C-c") 'nil)

;; keybindings applied only in normal mode (evil stage)
(evil-define-key 'normal kode-mode-map (kbd "M-j")     'move-text-down)
(evil-define-key 'normal kode-mode-map (kbd "M-k")     'move-text-up)

;; keybindings applied only in insert mode
(evil-define-key 'insert kode-mode-map (kbd "C-x C-c") 'evil-normal-state)
(evil-define-key 'insert kode-mode-map (kbd "M-h") 'evil-backward-char)
(evil-define-key 'insert kode-mode-map (kbd "M-j") 'evil-next-line)
(evil-define-key 'insert kode-mode-map (kbd "M-k") 'evil-previous-line)
(evil-define-key 'insert kode-mode-map (kbd "M-l") 'evil-forward-char)

(provide 'kode-mode)
