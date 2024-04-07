(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(use-package company
  :init (global-company-mode)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist '((".*" . "/tmp/emacs/")))
 '(cursor-type '(bar . 2))
 '(custom-enabled-themes '(nord))
 '(custom-safe-themes
   '("4c7228157ba3a48c288ad8ef83c490b94cb29ef01236205e360c2c4db200bb18" default))
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(nord-theme company))
 '(use-package-always-ensure t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
