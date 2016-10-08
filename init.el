;;; init.el --- Emacs configuration initialize file.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq gc-cons-threshold 104857600)
(setq package-enable-at-startup nil)


;; set up `load-paths'
(dolist (path '("core" "lisp"))
  (add-to-list 'load-path
	       (expand-file-name path user-emacs-directory)))


(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; core settings for emacs
(require 'core-system)
(require 'core-el-get)
(require 'core-libs)
(require 'core-evil)


(require 'zcodes-gui-frame)
(require 'zcodes-fonts)
(require 'zcodes-misc)
(require 'zcodes-edit)
(require 'zcodes-files)
(require 'zcodes-ibuffer)
(require 'zcodes-dired)
(require 'zcodes-speedbar)
(require 'zcodes-yasnippet)


;; misc plugins
(require 'zcodes-company)
(require 'zcodes-ido)
(require 'zcodes-neotree)
(require 'zcodes-powerline)
(require 'zcodes-projectile)

;; support for programming languages
(require 'zcodes-php)
(require 'zcodes-python)
(require 'zcodes-markdown)
(require 'zcodes-org)
(require 'zcodes-web)
(require 'zcodes-css)
(require 'zcodes-yaml)
(require 'zcodes-lua)
(require 'zcodes-slime)
(require 'zcodes-javascript)


(require 'zcodes-neotree)
(require 'zcodes-powerline)
(require 'zcodes-window-number)
(require 'zcodes-pangu-spacing)

;; Emacs theme
(require 'zcodes-themes)


;; load customizations
(when (file-exists-p custom-file)
    (load custom-file))


(el-get 'sync)
(package-initialize)

;;; init.el ends here.
