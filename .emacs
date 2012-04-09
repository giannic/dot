;;
;; For 256 color xterm
;;

;;disable startup messages
(setq-default inhibit-default-init t
              inhibit-splash-screen t
              inhibit-startup-message t
              inhibit-startup-echo-area-message "han"
              inhibit-scratch-message "")

;;remove menu bar
;;0 instead of nil for mac, not sure why
(menu-bar-mode 0)

;;turn on line numbers
;;(global-linum-mode t)

;;turn on font lock mode
(global-font-lock-mode t)
(setq-default transient-mark-mode t)

;;toggle on just-in-time lock mode to boost speed, new with emacs21
(require 'jit-lock)
(setq jit-lock-stealth-time 0.5)

;;prevent ~ files
(setq-default make-backup-files nil)

;;highlight marked area
(set-face-background 'region "gray20")

;;highlight current line, color
(global-hl-line-mode 1)
(set-face-background 'hl-line "gray10")

;;scroll by 1 line
(setq-default scroll-step 1)

;;tabs > 4 spaces, for the web
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)

;;utf-8
(setq-default locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;matching paren highlighting
(show-paren-mode 1)
(setq-default show-paren-delay 0)
(set-face-background 'show-paren-match-face "gray60")

;;search color
(setq-default search-highlight t)
(set-face-foreground 'isearch "black")
(set-face-background 'isearch "plum")
(set-face-foreground 'isearch-lazy-highlight-face "black")
(set-face-background 'isearch-lazy-highlight-face "white")

;;ignore case in autocomplete
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;;highlight trailing spaces in red
(setq-default show-trailing-whitespace t)

;;highlight tabs in red
(require 'whitespace)
(global-whitespace-mode t)
(setq-default whitespace-style '(face tabs))
(set-face-background 'whitespace-tab "red")
