(add-to-list 'load-path (concat vendor-dir "erlang/"))

(require 'erlang-start)
(setq erlang-root-dir
      (if (eq system-type 'darwin)
          "/usr/local/Cellar/erlang/R14B03/lib/erlang"
        "/usr/lib64/erlang"))
