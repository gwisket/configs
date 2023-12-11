(setq initial-buffer-choice nil)
(setq initial-scratch-message nil)
(setq-default indent-tabs-mode nil)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Ensure use-package is installed
(unless (require 'use-package nil 'noerror)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(straight-use-package 'use-package)

;; Configure package management with use-package
(use-package package
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
  (package-initialize))

(use-package markdown-mode
  :ensure t)

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (prog-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package company-mode
  :ensure t
  :commands global-company-mode)

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)

(use-package treesit-auto
  :ensure t
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(use-package neotree
  :ensure t
  :bind ("C-x t t" . neotree-toggle)
  :config
  (setq neo-smart-open t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package browse-kill-ring
  :ensure t
  :config
  (browse-kill-ring-default-keybindings))

(use-package highlight-indent-guides
  :ensure t)

(use-package dimmer
  :ensure t
  :config
  (dimmer-configure-which-key)
  (dimmer-mode t))

(use-package color-theme-sanityinc-tomorrow
  :ensure t
  :config
  (load-theme 'sanityinc-tomorrow-bright))

(use-package pug-mode
  :ensure t)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; Disable automatic customizations
(setq custom-file (make-temp-file "emacs-custom"))
