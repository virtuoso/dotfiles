(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))
(eval-when-compile (require 'cl))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (find 'alpha (frame-parameters nil) :key #'car))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 60))))

(defun shisha/auto-indent ()
  (interactive)
  (cond ((string-match "C/l" mode-name)
	 (c-toggle-auto-state 0)
	 (c-toggle-hungry-state 0)
	 (message "Toggled crazy C auto-intentation mode")
	 )
	 ((message (concat "No luck with " mode-name))))
)

(menu-bar-mode)
(tool-bar-mode)

(setq my-home (getenv "HOME"))
(setq backup-directory-alist `(("." . ,(concat my-home "/.emacs.d/backup"))))

(push (concat my-home "/.emacs.d") load-path)

;; goodies
;; -- auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;; -- gitsum
(require 'gitsum)

;; -- magit
(setq magit-commit-signoff t)

;; -- whitespace errors
(require 'show-wspace)
(show-ws-toggle-show-trailing-whitespace)

;; -- highlight
(require 'highlight-current-line)
(highlight-current-line-on t)

;; misc tunings
(setq column-number-mode t)
(show-paren-mode 1)
(setq show-paren-style 'mixed)

;; notmuch
(load "notmuchstuff.el")

;; color theme
(load "yk.el")
(add-hook 'server-switch-hook 'shisha/client-start-hook)

;; key bindings
(global-set-key [(control insert)] 'kill-ring-save)
(global-set-key [(shift insert)] 'yank)
(global-set-key [(shift delete)] 'kill-region)
(global-set-key (kbd "C-c C-t") 'toggle-transparency)
(global-set-key (kbd "C-c [") 'shisha/auto-indent)
(global-set-key (kbd "C-c ]") 'show-ws-toggle-show-trailing-whitespace)

;; C
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (c-set-offset 'case-label 8)
  (setq tab-width 8)
  (setq indent-tabs-mode t)
  (setq c-basic-offset 8))

;; lua
(require 'lua-mode)
(setq lua-indent-level 8)

;;
(setq inhibit-startup-screen t)
