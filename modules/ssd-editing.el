;; Settings for better editing

(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(delete-selection-mode t)
(show-paren-mode t)

;; spell-checking
(setq-default ispell-program-name "aspell")
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; programming hooks
(add-hook 'prog-mode-hook 'linum-mode)
;; (add-hook 'prog-mode-hook 'fci-mode)

;; uniq buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-ignore-buffers-re "^\\*")

;;keybindings
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-c +") 'text-scale-increase)
(global-set-key (kbd "C-c -") 'text-scale-decrease)
(global-set-key (kbd "C-.") 'repeat)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c a") '(lambda ()  (interactive) (ansi-term "~/bin/start-shell")))

;; electric modes
(electric-pair-mode t)
;;(electric-indent-mode t)
;;(electric-layout-mode t)

;; Autocompletion/snippets
(global-set-key (kbd "M-'") 'hippie-expand)
(require 'yasnippet)
;;(yas/initialize)
(yas/load-directory (concat emacs-dir "snippets"))

;; Integrate hippie-expand with ya-snippet
(add-to-list 'hippie-expand-try-functions-list
             'yas/hippie-try-expand)

(require 'writegood-mode)
(add-hook 'text-mode-hook 'writegood-turn-on)

(defun move-line-up ()
  (interactive)
  (when (/= (line-number-at-pos) 1)
    (transpose-lines 1)
    (forward-line -2)
    (indent-according-to-mode)))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key (kbd "M-p") 'move-line-up)
(global-set-key (kbd "M-n") 'move-line-down)
