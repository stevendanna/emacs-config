;; Theme
(add-to-list 'custom-theme-load-path (concat emacs-dir "themes/"))
(load-theme 'ssd-colors t)

;; other ui
;; move into the theme eventually
(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)
;; font
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :height 120 :family "Monaco")
    (set-face-attribute 'default nil :height 100 :family "Monaco"))

;; Remove uncessary UI elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode -1)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)

;; Modeline
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;;behavior
(fset 'yes-or-no-p 'y-or-n-p)

;; linum-mode style
(setq linum-format "%d ")

;;hl-line
;;(global-hl-line-mode)
