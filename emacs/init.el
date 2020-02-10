(require 'package)
;; Repositories
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-enabled-themes (quote (afternoon)))
 '(custom-safe-themes
   (quote
    ("2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" default)))
 '(frame-brackground-mode (quote dark))
 '(neo-window-position (quote right))
 '(package-selected-packages
   (quote
    (afternoon-theme yaml-mode rust-mode org markdown-mode neotree auctex-latexmk company-coq auctex))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20181121.2026")

;;(load-file "~/.opam/easycrypt/share/proofgeneral/generic/proof-site.el")

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
 c-basic-offset 4
 tab-width 4
 indent-tabs-mode nil
 )

;; Additional file types
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.jazz\\'" . c-mode))
