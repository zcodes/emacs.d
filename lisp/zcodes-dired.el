;;; zcodes-dired.el --- Emacs dired settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle dired+)
(el-get-bundle dired-sort)

(setq-default diredp-hide-details-initially-flag nil
	      dired-dwim-target t)

(with-eval-after-load 'dired
  (require 'dired+)
  (require 'dired-sort)
  (when (fboundp 'global-dired-hide-details-mode)
    (global-dired-hide-details-mode -1))
  (setq dired-recursive-deletes 'top))

(provide 'zcodes-dired)
;;; zcodes-dired.el ends here.
