;;; change this according to your needs
;;; you can get "Source Code Pro" from http://sourceforge.net/projects/sourcecodepro.adobe/
;;; it's a great coding font
;; these two are joined, activate or de-activate together
(defvar default-font "Source Code Pro 12" "My default Emacs font.")
(set-frame-font default-font nil t)

(global-linum-mode t)
(when (or (display-graphic-p) (eq system-type 'darwin))
  (global-hl-line-mode 1))

;;; Always have cursor above a number of lines from bottom
;;(setq scroll-margin 10)

;;; globals
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
