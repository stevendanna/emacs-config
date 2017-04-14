;; Various functions, many from EmacsWipki

(defun add-todo ()
  (interactive)
  (insert (format-time-string "TODO(ssd) %Y-%m-%d: "))
  (comment-line 1)
  (previous-line)
  (end-of-line))
(global-set-key (kbd "C-c t") 'add-todo)

;; This function is from the Emacs Wiki
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; This function is from Emacs-Prelude
;; https://github.com/bbatsov/emacs-prelude
(defun indent-and-copy (begin end)
  (interactive "r")
  (let ((buffer (current-buffer)))
    (with-temp-buffer
      (insert-buffer-substring-no-properties buffer begin end)
      (indent-rigidly (point-min) (point-max) 4)
      (clipboard-kill-ring-save (point-min) (point-max)))))
