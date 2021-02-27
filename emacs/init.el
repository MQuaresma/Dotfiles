(require 'package)
;; Repositories
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/"))
(package-initialize)

(load-file "~/.emacs.d/elpa/proof-general-20210213.1907/generic/proof-site.el")

(tool-bar-mode 0)
(scroll-bar-mode 0)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(global-hl-line-mode 1)
(global-display-line-numbers-mode)

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coq-prog-name "/Users/miguelq/.opam/jasmin/bin/coqtop")
 '(easycrypt-prog-name "/Users/miguelq/.opam/jasmin/bin/easycrypt")
 '(custom-enabled-themes '(deeper-blue))
 '(frame-brackground-mode 'dark)
 '(package-selected-packages
   '(company-coq company-math proof-general auctex rust-mode markdown-mode auctex-latexmk))
 '(proof-three-window-enable t)
 '(ring-bell-function 'ignore))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(cua-mode)
(setq mac-option-modifier 'none
      backup-directory-alist '(("." . "~/.emacs.d/backup"))
      TeX-PDF-mode t
      )

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "M-p") 'move-line-up)
(global-set-key (kbd "M-n") 'move-line-down)

(setq-default
 c-default-style "linux"
 c-basic-offset 2
 tab-width 2
 indent-tabs-mode nil
 )

;; Additional file types
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.jazz\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.jahh\\'" . c-mode))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2019/bin/x86_64-darwin/"))  
(setq exec-path (append exec-path '("/usr/local/texlive/2019/bin/x86_64-darwin/")))
