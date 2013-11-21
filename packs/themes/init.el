(setq custom-theme-directory (live-pack-lib-dir))

(custom-set-variables
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(tool-bar-mode nil))

;;; uncomment just the one you want
(load-theme 'solarized-dark)
;;(load-theme 'tomorrow-night t)
;;(load-theme 'zenburn t)
;; (set-cursor-color "firebrick")
;; (setq hcz-set-cursor-color-color "")
;; (setq hcz-set-cursor-color-buffer "")

;; (defun my-set-cursor-color ()
;;   "Change cursor color according to themes/init.el"
;;   ;; set-cursor-color is somewhat costly, so we only call it when needed:
;;   (let ((color "firebrick"))
;;     (unless (and
;;              (string= color hcz-set-cursor-color-color)
;;              (string= (buffer-name) hcz-set-cursor-color-buffer))
;;       (set-cursor-color (setq hcz-set-cursor-color-color color))
;;       (setq hcz-set-cursor-color-buffer (buffer-name)))))

;; (add-hook 'post-command-hook 'my-set-cursor-color)
