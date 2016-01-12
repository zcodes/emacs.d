(when (version<= emacs-version "24.5")
  (error "this config require emacs 24.5 at leaset."))

;; minalize gui frame at startup
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; manage packages with el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))

(require 'zcodes-evil)
(require 'zcodes-themes)
(require 'zcodes-gui-frame)
(require 'zcodes-fonts)
(require 'zcodes-misc)
(require 'zcodes-edit)
(require 'zcodes-files)
(require 'zcodes-ibuffer)
(require 'zcodes-dired)
(require 'zcodes-speedbar)
(require 'zcodes-yasnippet)

;; support for programming languages
(require 'zcodes-php)
(require 'zcodes-python)
(require 'zcodes-markdown)
(require 'zcodes-org)
(require 'zcodes-web)
(require 'zcodes-css)
(require 'zcodes-yaml)
(require 'zcodes-lua)

;;
(require 'zcodes-neotree)
(require 'zcodes-powerline)

;; local customizations
(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load custom-file))
