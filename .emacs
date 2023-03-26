; C-h to delete                                                                                                                                   
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

; disable startup splash screen                                                                                                                   
(custom-set-variables
 '(inhibit-startup-screen t)
)

; disable creating backup files                                                                                                                   
(setq make-backup-files t)
