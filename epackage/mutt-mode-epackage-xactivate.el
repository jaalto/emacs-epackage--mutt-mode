;; Say, you use mutt(1) to read your mail. But you want to write your
;; mails (compose, reply...) with Emacs from mutt.

(defvar server-process)

(defun mutt-mode-epackage-activate ()
  "For mutt(1) buffer sent to Emacs, turn on `mutt-mode'."
  (when (and (boundp 'server-process)
	     server-process
	     (fboundp 'mutt-mode))
    (mutt-mode)))

(add-to-list 'auto-mode-alist '("^mutt-.*[0-9]$" . mutt-mode-epackage-activate))

(unless (memq system-type '(windows-nt msdos))
  (server-start))

(provide 'mutt-mode-epackage-xactivate)
