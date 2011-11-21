;; Settings for better editing

(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(delete-selection-mode t)
(show-paren-mode t)

;; spell-checking
(setq-default ispell-program-name "aspell")
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'auto-fill-mode)

;; programming hooks
(add-hook 'prog-mode-hook 'linum-mode)

;;better buffer names
(require 'uniquify)

;;keybindings
(global-set-key (kbd "C-M-h") 'backward-kill-word)
