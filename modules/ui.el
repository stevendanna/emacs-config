;; Theme
(add-to-list 'custom-theme-load-path (concat emacs-dir "themes/"))
(load-theme 'ssd-colors t)

;; ;; other ui
;; ;; move into the theme eventually
(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

;; font
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :height 140 :family "Hack")
  (set-face-attribute 'default nil :height 100 :family "Monaco"))

;; Ignor bell
(setq ring-bell-function 'ignore)
(setq visible-bell t)

;; Remove uncessary UI elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(if (not (eq system-type 'darwin))
    (menu-bar-mode -1))

;; Modeline
(line-number-mode t)
(column-number-mode t)
(display-time)
(size-indication-mode t)

;;behavior
(fset 'yes-or-no-p 'y-or-n-p)

;; linum-mode style
(setq linum-format "%4d ")
