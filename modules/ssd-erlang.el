(add-to-list 'auto-mode-alist '("rebar.config$" . erlang-mode))

(add-to-list 'load-path "~/.erln8.d/otps/OTP-18.2.3/dist/lib/erlang/lib/tools-2.7.2/emacs/")
(add-to-list 'exec-path "~/.erln8.d/otps/OTP-18.2.3/dist/bin/")
(setq erlang-root-dir "~/.erln8.d/otps/OTP-18.2.3/dist/")
(setq erlang-man-dirs (list '("Man - Commands" "lib/erlang/man/man1" t)
                            '("Man - Modules" "lib/erlang/man/man3" t)
                            '("Man - Files" "lib/erlang/man/man4" t)
                            '("Man - Applications" "lib/erlang/man/man6" t)))


(require 'erlang-start)
(add-hook 'erlang-mode-hook 'linum-mode)

(setq flycheck-erlang-include-path
  (list "include"
        "../../_build/default/lib"
        "../include"
        "../../include"
        "../../../include"
        "_build/default/lib"
        "_build/test/lib"
        "deps"))
