;;; Emacs 字体配置

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;; NOTES: 在Emacs的Org-mode中,表格中含有中文时字体会存在难以对齐的问题,现
;; 在比较好的解决方案是分别选择合适中文和英文字体,然后按照一定比例设置
;; 字体大小, 如 Ubuntu Mono 12 和 Source Han Sans 16. 
;; 参考:
;;    1. http://baohaojun.github.io/perfect-emacs-chinese-font.html
;;    2. http://zhuoqiang.me/torture-emacs.html
;;    3. https://github.com/tumashu/chinese-fonts-setup
;;    4. http://coldnew.github.io/blog/2013/11/16_d2f3a.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (set-frame-font "Anonymous Pro 11")
(if (eq window-system 'w32)
    (progn
      (set-frame-font "Courier New 10")
      (set-fontset-font t 'han
			(font-spec :family "宋体"
				   :size 16)))
  (progn
    (set-frame-font "Source Code Pro 10")
    (set-fontset-font t 'han
		      (font-spec :family "Source Han Sans SC Normal"
				 :size 12.0))))

(provide 'zcodes-fonts)
