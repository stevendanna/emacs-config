(require 'jabber)
(global-set-key "\C-cj" 'jabber-connect-all)
(setq jabber-account-list
      '(("StevenSDanna@gmail.com"
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))
(setq jabber-show-resources nil)
(setq jabber-roster-line-format "%c%n %s %S")
(setq jabber-roster-buffer "buddy-list")
(setq jabber-chat-buffer-show-avatar nil)
(jabber-roster-toggle-offline-display)
(jabber-roster-toggle-binding-display)
