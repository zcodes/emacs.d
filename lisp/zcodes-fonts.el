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
(set-frame-font "Fira Mono Medium-11")
(if (zcodes/is-windows)
    (setq zcodes/chinese-font "Microsoft Yahei")
  (setq zcodes/chinese-font "思源黑体 Medium"))

;; 单独设置中文字体
(dolist (charset '(han symbol cjk-misc))
  (set-fontset-font t charset
		    (font-spec :family zcodes/chinese-font
			       :size 12.0)))

;; mode-line font
(add-hook 'after-init-hook
	  '(lambda ()
	     (set-face-attribute 'mode-line nil
				 :font "Fira Mono Medium-11")))

(provide 'zcodes-fonts)

;;; zcodes-fonts.el ends here.
