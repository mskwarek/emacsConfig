;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(add-to-list 'load-path "/home/mskwarek/.emacs.d/neotree/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(add-to-list 'load-path "/home/mskwarek/.emacs.d/ttcn")
(require 'ttcn3)
(autoload 'ttcn-3-mode "ttcn-3-mode" "TTCN3 editing mode." t)
(setq auto-mode-alist (cons '("\\.ttcn3?" . ttcn-3-mode) auto-mode-alist))

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (modern-cpp-font-lock spotify ctags-update cpputils-cmake projectile material-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
