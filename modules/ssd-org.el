;; org-mode settings
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t
      org-agenda-files '("~/org/"
                         "~/org/deft"))

;; deft for quick note taking
(require 'deft)
(setq deft-extension "org"
      deft-directory "~/org/deft/"
      deft-text-mode 'org-mode)
(global-set-key (kbd "\C-cd") 'deft)
