
;; ssd-colors-theme.el: Emacs color theme inspired by dark-laptop.
(deftheme ssd-colors
  "Emacs24 color theme inspired by dark-laptop")

;; Define colors for easy use
(custom-theme-set-faces
 'ssd-colors
 ;; basics
 '(default ((t (:background "black" :foreground "white" ))))
 '(cursor ((t (:background "yellow"))))
 '(mode-line ((t (:foreground "black" :background "white"))))
 '(region ((t (:background "blue"))))
 ;; font-lock
 '(font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-comment-face ((t (:foreground "OrangeRed"))))
 '(font-lock-constant-face ((t (:foreground "Aquamarine"))))
 '(font-lock-doc-string-face ((t (:foreground "LightSalmon"))))
 '(font-lock-function-name-face ((t (:foreground "LightSkyBlue"))))
 '(font-lock-keyword-face ((t (:foreground "Cyan"))))
 '(font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
 '(font-lock-reference-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-string-face ((t (:foreground "LightSalmon"))))
 '(font-lock-type-face ((t (:foreground "PaleGreen"))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(font-lock-warning-face ((t (:foreground "Pink" :weight bold))))
 '(hl-line ((t (:background "#333333"))))
 )
