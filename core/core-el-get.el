;;; core-el-get.el --- Manage emacs packages use el-get !
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(add-to-list 'load-path
	     (expand-file-name "el-get/el-get" user-emacs-directory))

;; I forked el-get form `https://github.com/dimitri/el-get'
(setq el-get-git-install-url "https://github.com/zcodes/el-get.git")

;; install el-get first
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/zcodes/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; enable user specified el-get recipes.
(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

(provide 'core-el-get)

;;; core-el-get.el ends here.
