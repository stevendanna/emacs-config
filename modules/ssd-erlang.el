(add-to-list 'load-path "~/.erln8.d/otps/OTP-17.5/dist/lib/erlang/lib/tools-2.7.2/emacs/")
(add-to-list 'exec-path "~/.erln8.d/otps/OTP-17.5/dist/bin/")
(setq erlang-root-dir "~/.erln8.d/otps/OTP-17.5/dist/bin/")

(require 'erlang-start)
(require 'edts-start)

(require 'projmake-mode)
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

;; Bonus, projmake-mode for rebar3
(setq projmake-project-descs
      '(("Rebar" "rebar.config" "nice -n5 rebar3 compile")))

;; stole this fun from seth falcon, it ain't broke so...
(defun my-erlang-mode-hook ()
  (if (buffer-file-name)
      ;; projmake breaks org-mode code block editing. need to
      ;; investigate
      (progn
        (projmake-mode)
        (projmake-search-load-project)
        (projmake-enable))
    (message "skipping projmake for ephemeral buffer"))
  )
