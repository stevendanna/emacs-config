;; Random bits that make everything work on OSX
(if (eq system-type 'darwin)
    (setq exec-path (cons "/usr/local/bin" exec-path)))
