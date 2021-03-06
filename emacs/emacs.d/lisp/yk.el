(setq my-font-size "12")
(setq my-font "PragmataPro")
(setq my-normal-font (concat my-font " " my-font-size))
(setq my-bold-font (concat my-font " Bold " my-font-size))
(setq my-italic-font (concat my-font " Italic " my-font-size))
(setq my-bold-italic-font (concat my-font " Bold Italic " my-font-size))

(defun shisha/color-theme-dark ()
  (progn
    (setq my-fcolor "Cyan1")
    (setq my-bcolor (if (eq window-system 'x) "#000808" "black"))

    (set-frame-parameter nil 'background-mode 'dark)
    (add-to-list 'default-frame-alist `(background-color . ,my-bcolor))
    (add-to-list 'default-frame-alist `(foreground-color . ,my-fcolor))
    (add-to-list 'default-frame-alist `(cursor-color . "red"))
    (setq initial-frame-alist default-frame-alist)
    (setq special-display-frame-alist default-frame-alist)
    (set-cursor-color "red")
    ;;(highlight-current-line-set-bg-color "Black")

    (set-foreground-color my-fcolor)
    (set-background-color my-bcolor)
    (set-face-foreground 'mode-line "gray")
    (set-face-background 'mode-line my-bcolor)
    (set-face-foreground 'menu "gray")
    (set-face-background 'menu my-bcolor)
    (set-face-background 'show-paren-match "MidnightBlue")
    (set-face-background 'scroll-bar my-bcolor)
    (set-face-foreground 'font-lock-comment-face "#0066cc")
    (set-face-foreground 'font-lock-preprocessor-face "Coral")
    (set-face-foreground 'font-lock-string-face "LightBlue")
    (set-face-foreground 'font-lock-builtin-face "Purple")
    (set-face-foreground 'font-lock-keyword-face "#20c0ff")
    (set-face-foreground 'font-lock-type-face "Cyan4")
    (set-face-background 'hl-line "gray10")
    t)
  )

(defun shisha/color-theme-light ()
  (progn
    (setq my-fcolor "Black")
    (setq my-bcolor (if (eq window-system 'x) "beige" "white"))

    (set-frame-parameter nil 'background-mode 'light)
    (add-to-list 'default-frame-alist `(background-color . ,my-bcolor))
    (add-to-list 'default-frame-alist `(foreground-color . ,my-fcolor))
    (add-to-list 'default-frame-alist `(cursor-color . "red"))
    (setq initial-frame-alist default-frame-alist)
    (setq special-display-frame-alist default-frame-alist)
    (set-cursor-color "red")

    (set-foreground-color my-fcolor)
    (set-background-color my-bcolor)
    (set-face-foreground 'mode-line "gray")
    (set-face-background 'mode-line my-bcolor)
    (set-face-foreground 'menu "gray")
    (set-face-background 'menu my-bcolor)
    (set-face-background 'show-paren-match "LightBlue")
    (set-face-background 'scroll-bar my-bcolor)
    (set-face-foreground 'font-lock-comment-face "#0066cc")
    (set-face-foreground 'font-lock-preprocessor-face "#d03040")
    (set-face-foreground 'font-lock-string-face "MidnightBlue")
    (set-face-foreground 'font-lock-builtin-face "Purple")
    (set-face-foreground 'font-lock-keyword-face "#2090cf")
    (set-face-foreground 'font-lock-type-face "Cyan4")
    (set-face-background 'hl-line "gray")
    t)
  )

(defun shisha/color-theme ()
  (interactive)
  (progn
    (cond ((eq window-system 'x) 'shisha/color-theme-dark)
	  ((eq window-system 'ns) 'shisha/color-theme-dark))
    (set-face-font 'font-lock-keyword-face my-bold-font)
    (set-face-font 'font-lock-comment-face my-italic-font)
    (set-face-font 'font-lock-string-face my-bold-font)
    (set-frame-font my-normal-font)
    (set-frame-parameter nil 'background-mode 'dark)
    (load-theme 'solarized t)
    (enable-theme 'solarized)
    t)
  )

(defun shisha/client-start-hook ()
  shisha/color-theme
  )
