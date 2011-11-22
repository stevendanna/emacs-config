;; Theme
(add-to-list 'custom-theme-load-path (concat emacs-dir "themes/"))
(load-theme 'zenburn t)

;; Remove uncessary UI elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(unless (eq system-type 'darwin)
  (menu-bar-mode -1))

;; Modeline
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;;behavior
(fset 'yes-or-no-p 'y-or-n-p)
