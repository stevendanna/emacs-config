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
(global-flycheck-mode)
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
(global-set-key (kbd "C-c a") '(lambda ()  (interactive) (ansi-term "~/bin/start-shell")))

;; electric modes
(electric-pair-mode t)
;;(electric-indent-mode t)
;;(electric-layout-mode t)

(require 'writegood-mode)
(add-hook 'text-mode-hook 'writegood-turn-on)

;; store all autosave files in the tmp dir
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/backup"))
      delete-old-versions t
      kept-new-versions 24
      kept-old-versions 12
      version-control t)

(setq create-lockfiles nil)

(defun gotosrc ()
  "Switch to a project"
  (interactive)
  (ivy-read "project:" (delete ".."
                               (delete "."
                                       (append (directory-files "~/oc/code/opscode" t )
                                               (directory-files "~/oc/code/opscode-cookbooks" t)
                                               (directory-files "~/src" t)
                                               (directory-files "~/src/habitat-sh" t))))
            :action (lambda (x)
                      (neotree-dir x))))
(global-set-key (kbd "C-c g") 'gotosrc)

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
