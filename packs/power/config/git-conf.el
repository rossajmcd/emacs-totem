(live-add-pack-lib "magit")
(require 'magit)
(require 'magit-blame)
(require 'magit-bisect)

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (set-face-background 'magit-item-highlight "#f0c674")
     (set-face-foreground 'magit-item-highlight "#1d1f21")
     (set-face-foreground 'magit-diff-hunk-header "orange")
     (set-face-foreground 'magit-branch "gold")))

(eval-after-load "magit"
  (progn '(global-set-key (kbd "C-x g") 'magit-status)))
