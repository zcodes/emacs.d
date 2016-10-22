;;; zcodes-javascript.el --- Emacs Javascript Support
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle coffee-mode)
(el-get-bundle js2-mode)
(el-get-bundle js2-refactor)
(el-get-bundle json-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))

(setq coffee-tab-width 2
      coffee-indent-like-python-mode t)

(setq js-indent-level 2
      js2-basic-offset 2)

(provide 'zcodes-javascript)
;;; zcodes-javascript.el ends here.
