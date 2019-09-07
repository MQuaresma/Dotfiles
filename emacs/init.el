(tool-bar-mode 0)
(scroll-bar-mode 0)

(global-hl-line-mode 1)
(global-display-line-numbers-mode)

(require 'package)
;; Repositories
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(easycrypt-prog-name "/Users/miguelq/.opam/easycrypt/bin/easycrypt")
 '(neo-window-position (quote right))
 '(package-selected-packages
   (quote
    (markdown-mode neotree spacemacs-theme dtrace-script-mode auctex-latexmk company-coq auctex proof-general))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
()

(load-theme 'spacemacs-dark)
(load-file "/Users/miguelq/.opam/easycrypt/share/proofgeneral/generic/proof-site.el")

(add-to-list 'load-path "/Users/miguelq/.emacs.d/elpa/neotree-20181121.2026")
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(cua-mode)
(setq mac-option-modifier 'none)

(setq-default
 c-default-style "linux"
 c-basic-offset 4
 tab-width 4
 indent-tabs-mode nil)

(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.jazz\\'" . c-mode))

(setq TeX-PDF-mode t)
