(add-to-list 'auto-mode-alist '("rebar.config$" . erlang-mode))

(add-to-list 'load-path "~/.erln8.d/otps/OTP-18.2.3/dist/lib/erlang/lib/tools-2.7.2/emacs/")
(add-to-list 'exec-path "~/.erln8.d/otps/OTP-18.2.3/dist/bin/")
(setq erlang-root-dir "~/.erln8.d/otps/OTP-18.2.3/dist/")
(setq erlang-flymake-get-include-dirs-function 'my-erlang-flymake-get-include-dirs)
(setq erlang-flymake-get-code-path-dirs-function 'my-erlang-flymake-get-code-dirs)
(setq erlang-man-dirs (list '("Man - Commands" "lib/erlang/man/man1" t)
                            '("Man - Modules" "lib/erlang/man/man3" t)
                            '("Man - Files" "lib/erlang/man/man4" t)
                            '("Man - Applications" "lib/erlang/man/man6" t)))


(require 'erlang-start)
(require 'erlang-flymake)
(add-hook 'erlang-mode-hook 'linum-mode)
(add-hook 'erlang-mode-hook 'flymake-mode)


(defun my-erlang-flymake-get-code-dirs ()
  (append (list (concat (erlang-flymake-get-app-dir) "ebin"))
          (file-expand-wildcards (concat (erlang-flymake-get-app-dir) "_build/default/lib/*/ebin"))
          (file-expand-wildcards (concat (erlang-flymake-get-app-dir) "_build/test/lib/*/ebin"))))

(defun my-erlang-flymake-get-include-dirs ()
  (list (concat (erlang-flymake-get-app-dir) "apps")
        (concat (erlang-flymake-get-app-dir) "include")
        (concat (erlang-flymake-get-app-dir) "_build/default/lib")
        (concat (erlang-flymake-get-app-dir) "_build/test/lib")
        (concat (erlang-flymake-get-app-dir) "deps")))
