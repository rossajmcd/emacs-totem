;;; change this according to your needs
;;; you can get "Source Code Pro" from http://sourceforge.net/projects/sourcecodepro.adobe/
;;; it's a great coding font
(defun font-candidate (&rest fonts)
    "Return the first available font."
    (--first (find-font (font-spec :name it)) fonts))

(defvar default-font (font-candidate '"Source Code Pro 12" "DejaVu Sans Mono-10:weight=normal"))
(set-frame-font default-font nil t)

(global-linum-mode t)
(when (or (display-graphic-p) (eq system-type 'darwin))
  (global-hl-line-mode 1))

;;; Always have cursor above a number of lines from bottom
;;(setq scroll-margin 10)