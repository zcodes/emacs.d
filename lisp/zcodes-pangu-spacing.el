;;; zcodes-pangu-spacing --- settings for plugin pangu-spacing
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle pangu-spacing)
(global-pangu-spacing-mode 1)

(dolist (mode '(org-mode-hook markdown-mode-hook))
  (add-hook mode
	    '(lambda ()
	       (set (make-local-variable 'pangu-spacing-real-insert-separtor) t))))

(provide 'zcodes-pangu-spacing)
;;; zcodes-pangu-spacing.el ends here.
