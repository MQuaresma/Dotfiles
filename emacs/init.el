(cua-mode)
(setq mac-option-modifier 'none)
(setq-default
 c-default-style "linux"
 c-basic-offset 4
 tab-width 4
 indent-tabs-mode nil)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives
               (cons "melpa" (concat proto "://melpa.org/packages/")) t))
(package-initialize)


(load-file "~/.emacs.d/elpa/proof-general-20190606.933/generic/proof-site.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(easycrypt-prog-name "/Users/miguelq/.opam/easycrypt/bin/easycrypt")
 '(package-selected-packages
   (quote
    (dtrace-script-mode auctex-latexmk company-coq auctex proof-general))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode)
(setq TeX-PDF-mode t)
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.jazz\\'" . c-mode))
