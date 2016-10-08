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

;; font settings is comment here for example, custom set it in
;; ~/.emacs.d/custom.el
;;
;; ;; mode-line font
;; (add-hook 'after-init-hook
;; 	  '(lambda ()
;; 	     (set-face-attribute 'mode-line nil
;; 				 :font "Fira Mono Medium-11")))

(defun zcodes/set-english-font (fontname)
  "set up english or ascii character fonts."
  (set-frame-font fontname))

(defun zcodes/set-chinese-font (family size)
  "set up chinese font"
  (dolist (charset '(han symbol cjk-misc))
    (set-fontset-font t charset
		      (font-spec :family family
				 :size size))))

;; demo
;; (zcodes/set-english-font "Consolas 14")
;; (zcodes/set-chinese-font "微软雅黑" 14.0)

(provide 'zcodes-fonts)

;;; zcodes-fonts.el ends here.
