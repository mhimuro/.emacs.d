;; Require
(require 'ansible)
(require 'counsel)
(require 'company)
(require 'company-ansible)
(require 'markdown-mode)
(require 'markdown-preview-mode)
(require 'package)
(require 'undo-fu)
(require 'whitespace)
(require 'yaml-mode)
(require 'yasnippet)
(require 'yasnippet-snippets)

;; Other Require
; $ brew install markdown

;; Package
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Global Minor Mode
(auto-compression-mode t)
(column-number-mode t)
(global-auto-revert-mode t)
(global-font-lock-mode t)
(global-linum-mode t)
(global-whitespace-mode t)
(ivy-mode t)
(show-paren-mode t)
(yas-global-mode t)
;; Encording
(prefer-coding-system 'utf-8)

;; Hook
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))
(add-hook 'dired-load-hook (lambda () (load "dired-x")))
(add-hook 'after-init-hook 'global-company-mode)

;; Short cut
;;;; backspace
(keyboard-translate ?\C-h ?\C-?)

;;;; Undo/Redo
(global-set-key (kbd "C-?") 'undo-fu-only-redo)

;; Hyper Key
(setq mac-right-command-modifier 'hyper)

;; Disable backup file
(setq make-backup-files nil)

;; Completion
(setq completion-ignore-case t)

;; View
;;;; Theme
(load-theme 'wombat 1)

;;;; Font
(set-frame-font "Ricty Diminished-14")

;;;; Tab Width
(setq-default tab-width 4)

;;;; Startup Message
(setq inhibit-startup-message t)

;;;; Initial scratch message
(setq initial-scratch-message "")

;; yas
(setq yas-snippet-dirs
  '("~/.emacs.d/snippets"
  "~/.emacs.d/elpa/yasnippet-snippets-20210408.1234/snippets"
  "~/.emacs.d/elpa/ansible-20210103.543/snippets"
  )
)

;; company
(add-to-list 'company-backends 'company-ansible)

;; end
