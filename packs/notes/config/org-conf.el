
;; http://orgmode.org/manual/Activation.html
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-directory "~/.org")
(setq org-agenda-files (list (concat org-directory "/gtd.org")))

;; http://orgmode.org/manual/Closing-items.html
(setq org-log-done 'time)
(setq org-log-done 'note)

;; tie diary in to org mode as it is pulled in to agenda anyhow
(setq diary-file "~/.org/diary")

;; http://orgmode.org/manual/Weekly_002fdaily-agenda.html
(setq org-agenda-include-diary t)

;; http://orgmode.org/manual/Setting-up-capture.html
(setq org-default-notes-file (concat org-directory "/inbox.org"))

;; tags config
(setq org-tag-alist '((:startgroup . nil)
	                  ("@office" . ?o) ("@home" . ?h) 
	                  (:endgroup . nil)
	                  ("laton" . ?l) ("phone" . ?p) ("reading" . ?r)))

;; work tagged todo search
(setq org-agenda-custom-commands
  '(("h" tags-todo "+@HOME")
    ("o" tags-todo "+@OFFICE")))
