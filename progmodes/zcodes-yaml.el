;;; zcodes-yaml.el --- Yaml support.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle yaml-mode)
(setq yaml-indent-offset 4)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(provide 'zcodes-yaml)

;;; zcodes-yaml.el ends here.
