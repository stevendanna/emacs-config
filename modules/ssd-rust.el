(add-hook 'rust-mode-hook 'racer-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'racer-mode-hook 'eldoc-mode)
(add-to-list 'exec-path "~/.cargo/bin/")
