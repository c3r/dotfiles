;; Visuals
(set-frame-font "Consolas 13")
(load-theme 'tsdh-light)
(setq initial-frame-alist '((top . 50) (left . 100) (width . 145) (height . 50)))
(tool-bar-mode -1)
(display-time-mode 1)

;; Highlight parens without delay.
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Wrap lines always.
(global-visual-line-mode 1)

;; Let all the file backups go to one global location instead of corresponding paths:
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Don’t show the startup message or screen, show keystrokes right away, don’t show the message
;; in the scratch buffer, org-mode by default, sentences end with a single space, time in 24h format,
;; wrap lines, disable the scroll bar and delete text when typing over selection.
(setq
  inhibit-startup-message t
  inhibit-startup-screen t
  echo-keystrokes 0.1
  initial-scratch-message nil
  initial-major-mode 'org-mode
  sentence-end-double-space nil
  display-time-24hr-format t)

(visual-line-mode 1)
(scroll-bar-mode -1)
(delete-selection-mode 1)

;; With that in mind, Cmd+z becomes an annoying minimize into dock feature. So, C-z can be undo!
(global-set-key (kbd "C-z") 'undo)

;; Muscle memory is strong. Very often I press Cmd+v to paste, but it scrolls down. I rarely need
;; to scroll one page, haven’t use scroll up/down since switching to Mac, so I’d rather unbind
;; C-v completely. Scrolling pages is always disorienting anyways, I’d rather move by lines,
;; paragraphs or i-search.
(global-unset-key (kbd "C-v"))

;; Nicer scrolling behaviour. Thanks to https://zeekat.nl/articles/making-emacs-work-for-me.html
(setq scroll-margin 1
   scroll-step 1
   scroll-conservatively 10000
   scroll-preserve-screen-position 1)

(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; Enable IDO mode
(setq ido-enable-flex-matching t)
(ido-mode 1)
(setq ido-everywhere t)

