;;; zcodes-window-number.el --- switch window use window number.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


;; Bind SPACE-1,2,3... to select window 1,2,3..
(dotimes (i 10)
  (eval `(evil-leader/set-key
	   (number-to-string ,i)
	   '(lambda nil (interactive)
	      (window-number-select ,i)))))

(provide 'zcodes-window-number)
;;; zcodes-window-number.el ends here.
