;;; zcodes-misc --- Misc settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


;; enable TODO|FIXEME|BUG|NOTES keyword highlight.
(add-hook 'prog-mode-hook
	  (lambda ()
	    (font-lock-add-keywords
	     nil
	     '(("\\<\\(FIXME\\|TODO\\|BUG\\|NOTES\\):?"
		1
		font-lock-warning-face t)))))

(provide 'zcodes-misc)
;;; zcodes-misc.el ends here.
