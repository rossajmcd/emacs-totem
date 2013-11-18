(require 'smtpmail)

(setq
 user-mail-address "your@email.com"
 user-full-name  "Firstname Lastname")

(setq message-send-mail-function 'smtpmail-send-it
    smtpmail-stream-type 'starttls
    smtpmail-default-smtp-server "smtp.mailserver.com"
    smtpmail-smtp-server "smtp.mailserver.com"
    smtpmail-smtp-service 587)