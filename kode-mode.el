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

(define-key kode-mode-map (kbd "C-c C-c") 'compile)
(define-key kode-mode-map (kbd "C-c C-f") 'comment-line)
(define-key kode-mode-map (kbd "C-c C-d") 'uncomment-region)
(define-key kode-mode-map (kbd "C-c C-s") 'comment-indent)
(define-key kode-mode-map (kbd "C-x C-h") 'previous-buffer)
(define-key kode-mode-map (kbd "C-x C-l") 'next-buffer)
(define-key kode-mode-map (kbd "M-j") 'move-text-down)
(define-key kode-mode-map (kbd "M-k") 'move-text-up)

(provide 'kode-mode)
