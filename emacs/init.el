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
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("6bc387a588201caf31151205e4e468f382ecc0b888bac98b2b525006f7cb3307" "c5ad91387427abc66af38b8d6ea74cade4e3734129cbcb0c34cc90985d06dcb3" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" default)))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(neo-window-position (quote right))
 '(package-selected-packages
   (quote
    (cyberpunk-theme org dockerfile-mode markdown-mode neotree auctex-latexmk company-coq auctex)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;;(load-file "/Users/miguelq/.opam/easycrypt/share/proofgeneral/generic/proof-site.el")

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
