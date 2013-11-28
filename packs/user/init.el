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

;;; globals
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun live-user-first-name ()
  (car  (split-string user-full-name)))

(setq live-welcome-messages
      (list (concat "Hello " (live-user-first-name) ", somewhere in the world the Sun is shining for you right now.")
            (concat "Age quod agis.")
            (concat "Wisdom makes light the darkness of ignorance.")
            (concat "Hello " (live-user-first-name) ", it's lovely to see you again. I do hope that you're well.")
            (concat (live-user-first-name) ", this could be the beginnings of a great hacking session.")
            (concat (live-user-first-name) ", never see what has been done, only see what remains to be done.")
            (concat (live-user-first-name) ", turn your head towards the Sun and the shadows will fall behind you.")
            (concat "Learn the rules, " (live-user-first-name) ", so you know how to break them.")
            (concat (live-user-first-name) ", I'm kind of a big deal.")))

(defun live-welcome-message ()
  (nth (random (length live-welcome-messages)) live-welcome-messages))

(setq initial-scratch-message (concat ";;
;;([[[[[]o[+-{IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIID
;;
;; " (live-welcome-message) "
;;
;; emacs totem v0.2.0

"))
