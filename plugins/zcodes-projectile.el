;;; zcodes-projectile.el --- Emacs projectile.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle 'projectile)

(projectile-global-mode)
(setq projectile-enable-caching t)

(evil-leader/set-key
  "pf" 'projectile-find-file)

(provide 'zcodes-projectile)

;;; zcodes-projectile.el ends here.
