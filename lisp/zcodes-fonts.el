;;; zcodes-fonts.el --- Emacs font settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Fonts:
;; Fira Mono: https://github.com/mozilla/Fira
;; Source Han Sans: https://github.com/adobe-fonts/source-han-sans 

;; common font settings
(set-frame-font "Fira Mono Medium-14")
(set-fontset-font t 'han
		  (font-spec :family "思源黑体 Medium"
			     :size 13.5))

;; mode-line font
(add-hook 'after-init-hook
	  '(lambda ()
	     (set-face-attribute 'mode-line nil
				 :font "Fira Mono 11")))

(provide 'zcodes-fonts)

;;; zcodes-fonts.el ends here.
