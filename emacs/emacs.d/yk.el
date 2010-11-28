(setq my-fcolor "SeaGreen")
(setq my-bcolor "#001020")
(setq my-font "Droid Sans Mono")
(setq my-font-size "11")
;; (setq my-font "-rfx-fixed-medium-r-*-*-*-140-*-*-*-*-*-*")
;; (setq my-bfont "-rfx-fixed-bold-r-*-*-*-140-*-*-*-*-*-*")
;; (setq my-ifont "-rfx-fixed-medium-*-*-*-*-140-*-*-*-*-*-*")
;; (setq my-bifont "-rfx-fixed-bold-*-*-*-*-140-*-*-*-*-*-*")
(add-to-list 'default-frame-alist `(background-color . ,my-bcolor))
(add-to-list 'default-frame-alist `(foreground-color . ,my-fcolor))
(add-to-list 'default-frame-alist `(cursor-color . "red"))
(setq initial-frame-alist default-frame-alist)
(setq special-display-frame-alist default-frame-alist) 
(set-foreground-color my-fcolor)
(set-background-color my-bcolor)
(set-cursor-color "red")
(highlight-current-line-set-bg-color "Black")

(cond ((eq window-system 'x)
       (set-face-foreground 'mode-line "grey")
       (set-face-background 'mode-line my-bcolor)
       (set-face-foreground 'menu "grey")
       (set-face-background 'menu my-bcolor)
       (set-face-background 'show-paren-match "MidnightBlue")
       (set-face-background 'scroll-bar my-bcolor)
       (set-face-foreground 'font-lock-comment-face "#006699")
       (set-face-foreground 'font-lock-preprocessor-face "Coral")
       (set-face-foreground 'font-lock-string-face "LightBlue")
       (set-face-foreground 'font-lock-builtin-face "Purple")
       (set-face-foreground 'font-lock-keyword-face "#20c0ff")
       (set-face-font 'font-lock-keyword-face (concat my-font " Bold " my-font-size))
       (set-frame-font (concat my-font " " my-font-size))
       ;; (set-default-font my-font)
       ;; (set-face-font 'default my-font)
       ;; (set-face-font 'bold my-bfont)
       ;; (set-face-font 'italic my-ifont)
       ;; (set-face-font 'bold-italic my-bifont)
       )
      (t t))

(defun shisha/client-start-hook ()
  (cond ((eq window-system 'x)
	 (set-frame-font (concat my-font " " my-font-size))
	 )
	(t t))
)
