(require 'notmuch)

(defun notmuch-search-delete-thread ()
  "Delete thread (add \"delete\" tag).

This function advances the next thread when finished."
  (interactive)
  (notmuch-search-add-tag "delete")
  (forward-line))

(define-key notmuch-search-mode-map "d" 'notmuch-search-delete-thread)

(defun notmuch-show-delete-message ()
  "Delete message (add \"delete\" tag).

Add the \"delete\" tag to message. Then kill this buffer and
show the next thread from the search from which this thread was
originally shown."
  (interactive)
  (notmuch-show-add-tag "delete")
  (let ((parent-buffer notmuch-show-parent-buffer))
    (kill-this-buffer)
    (if parent-buffer
	(progn
	  (switch-to-buffer parent-buffer)
	  (forward-line)))))

(define-key notmuch-show-mode-map "d" 'notmuch-show-delete-message)