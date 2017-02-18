;; Emacs configuration entry point
;; The following is based on the installation directions
;; for Emacs Starter kit, which can be found at
;; https://github.com/technomancy/emacs-starter-kit

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(markdown-mode ess ruby-tools ruby-mode
                      ruby-end inf-ruby flycheck erlang org-magit
                      auctex clojure-mode coffee-mode gist
                      haml-mode haskell-mode magit paredit python
                      sass-mode scss-mode yaml-mode yari
                      yasnippet edts writegood-mode
                      writeroom-mode ivy counsel swiper)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; load vendor and custom files
(defvar emacs-dir (file-name-directory load-file-name)
  "top level emacs dir")
(defvar vendor-dir (concat emacs-dir "vendor/")
  "Packages not yet avilable in ELPA")
(defvar module-dir (concat emacs-dir "modules/")
  "The core of my emacs config")

;; Add to load path
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path module-dir)

;; Require packages in modules/
(mapc 'load (directory-files module-dir nil "^[^#].*el$"))
(server-start)
