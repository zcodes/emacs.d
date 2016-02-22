;;; zcodes-css.el --- Css support.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle less-css-mode)
(el-get-bundle rainbow-mode)

(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)
(add-hook 'js2-mode-hook 'rainbow-mode)

(provide 'zcodes-css)

;;; zcodes-css.el ends here.
