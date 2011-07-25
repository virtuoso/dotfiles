(require 'notmuch)

(setq notmuch-search-oldest-first nil)

(setq notmuch-show-all-tags-list t)

(setq notmuch-search-result-format
      `(
	("date" . "%s ")
	("count" . "%-7s ")
	("authors" . "%-30s ")
	("tags" . "(%s)")
	("subject" . "%s ")
	)
      )

(defun notmuch-search-delete-thread ()
  "Delete thread (add \"delete\" tag).

This function advances the next thread when finished."
  (interactive)
  (notmuch-search-add-tag "delete")
  (notmuch-search-remove-tag "inbox")
  (notmuch-search-remove-tag "unread")
  (forward-line))

(define-key notmuch-search-mode-map "d" 'notmuch-search-delete-thread)

(defun notmuch-show-delete-message ()
  "Delete message (add \"delete\" tag).

Add the \"delete\" tag to message. Then kill this buffer and
show the next thread from the search from which this thread was
originally shown."
  (interactive)
  (notmuch-show-add-tag "delete")
  (notmuch-show-remove-tag "inbox")
  (notmuch-show-remove-tag "unread")
  (let ((parent-buffer notmuch-show-parent-buffer))
    (kill-this-buffer)
    (if parent-buffer
	(progn
	  (switch-to-buffer parent-buffer)
	  (forward-line)))))

(define-key notmuch-show-mode-map "d" 'notmuch-show-delete-message)

(defun notmuch-search-archive-and-read-thread ()
  "Mark a thread as archived and read.

This function advances the next thread when finished."
  (interactive)
  (notmuch-search-remove-tag "inbox")
  (notmuch-search-remove-tag "unread")
  (forward-line))

(define-key notmuch-search-mode-map "A" 'notmuch-search-archive-and-read-thread)

(setq notmuch-saved-searches
      (quote (
	      ("my_new_patches" . "tag:patch and tag:personal and tag:unread")
	      ("my_patches" . "tag:patch and tag:personal")
	      ("inbox" . "tag:inbox")
	      ("unread" . "tag:unread")
	      )
	     )
      )