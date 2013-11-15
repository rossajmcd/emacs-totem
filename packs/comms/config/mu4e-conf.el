;; please install and configure offlineimap

;; this is just a basic configuration
(setq
 mu4e-maildir       "~/Maildir"
 mu4e-sent-folder   "/INBOX.Sent"
 mu4e-drafts-folder "/INBOX.Drafts"
 mu4e-trash-folder  "/INBOX.Trash"
 mu4e-get-mail-command "offlineimap"
 mu4e-update-interval 120)