;; Basic latex settings
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)


;; OS X Madness
(if (eq system-type 'darwin)
    (progn
      (setenv "PATH"
              (concat "/usr/texbin" ":"
                      (getenv "PATH")))
      (setq TeX-view-program-list '(("Shell Default" "open %o")))
      (setq TeX-view-program-selection '((output-pdf "Shell Default")))))
