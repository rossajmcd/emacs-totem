(live-add-pack-lib "yasnippet")
(require 'yasnippet)

(setq yas/root-directory (concat live-etc-dir "snippets"))

;; Load the snippets
(yas/load-directory yas/root-directory)
