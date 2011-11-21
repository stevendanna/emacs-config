;;confluence mode
(require 'confluence)

(custom-set-variables
 '(confluence-save-credentials t)
 '(confluence-url "https://wiki.opscode.com/rpc/xmlrpc")
 '(confluence-default-space-alist (list (cons confluence-url "chef"))))

(autoload 'confluence-get-page "confluence" nil t)
(global-set-key "\C-cp" 'confluence-get-page)

;; Functions to move between corp and community confluence setups
(defun go-corporate()
  (interactive)
  (custom-set-variables
   '(confluence-url "https://wiki.corp.opscode.com/rpc/xmlrpc")
   '(confluence-default-space-alist (list (cons confluence-url "CORP")))))

(defun go-community()
  (interactive)
  (custom-set-variables
   '(confluence-url "https://wiki.opscode.com/rpc/xmlrpc")
   '(confluence-default-space-alist (list (cons confluence-url "chef")))))
