;;; zcodes-ido --- Ido
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(el-get-bundle flx)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(provide 'zcodes-ido)
;;; zcodes-ido.el ends here.
