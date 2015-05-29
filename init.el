;;; 
;; 
;; Emacs配置参考:
;; 1. https://github.com/purcell/emacs.d.git
;; 2. https://github.com/bbatsov/prelude.git


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (version<= emacs-version "24")
  (error "Emacs版本太低,该配置需要Emacs 24.3或是更高版本"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))

(require 'zcodes-elpa)
(require 'zcodes-gui-frame)
(require 'zcodes-fonts)
(require 'zcodes-themes)

(require 'zcodes-misc)
(require 'zcodes-edit)
(require 'zcodes-files)

;; 常用插件设置
(require 'zcodes-ibuffer)
(require 'zcodes-dired)
(require 'zcodes-speedbar)
(require 'zcodes-yasnippet)

;; 编程语言支持
(require 'zcodes-php)
(require 'zcodes-python)
(require 'zcodes-markdown)
(require 'zcodes-org)
(require 'zcodes-web)
(require 'zcodes-css)
(require 'zcodes-yaml)

;; vim 模拟
(require 'zcodes-evil)
