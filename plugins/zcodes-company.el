;;; zcodes-company.el --- Emacs company.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3



(el-get-bundle company-mode)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'zcodes-company)

;;; zcodes-company.el ends here.
