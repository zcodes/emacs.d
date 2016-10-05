;;; zcodes-themes.el --- Emacs theme support.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle emacs-material-theme
  :type github
  :pkgname "zcodes/emacs-material-theme"
  (add-to-list 'custom-theme-load-path default-directory)
  (load-theme 'material t))

(defun zcodes/use-light-theme ()
  (interactive)
  (load-theme 'material-light t)
  (force-mode-line-update)
  (powerline-reset))

(defun zcodes/use-dark-theme ()
  (interactive)
  (load-theme 'material t)
  (force-mode-line-update)
  (powerline-reset))

(provide 'zcodes-themes)

;;; zcodes-themes.el ends here.
