(live-load-config-file "editor-conf.el")
(live-load-config-file "welcome-conf.el")

;;; globals
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
