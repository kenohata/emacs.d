(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; emacs core
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default inhibit-startup-screen t)
(setq-default inhibit-splash-screen t)
(setq-default truncate-lines t)
(setq-default make-backup-files nil)
(setq-default auto-save-default nil)
(fset 'yes-or-no-p 'y-or-n-p)
(global-auto-revert-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(load-theme 'sanityinc-tomorrow-eighties t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; keybinds
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
(global-set-key (kbd "M-o") 'helm-c-moccur-occur-by-moccur)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c p") 'helm-ls-git-ls)

;; defaults
(require 'better-defaults)

;; helm
(require 'helm-config)
(helm-mode 1)

;; helm-ls-git
(require 'helm-ls-git)
(setq-default helm-ls-git-show-abs-or-relative 'absolute)

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; popwin
(require 'popwin)
(popwin-mode t)

;; smooth-scrolling
(require 'smooth-scrolling)
(set 'smooth-scroll-margin 1)

;; smartparens
(require 'smartparens)
(smartparens-global-mode t)

;; flycheck
(require 'flycheck)
(global-flycheck-mode t)

;; lang-mode
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
