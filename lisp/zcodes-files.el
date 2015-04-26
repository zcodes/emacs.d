;;; Emacs 文件相关配置
;; 
;;
;;  NOTES:
;;  
;;  1. Emacs 会在第一次保存文件时备份文件,只要buffer不关闭,多次保存
;;  Emacs不会重复备份文件.
;;
;;  2. TODO: 默认情况下,Emacs会在文件所在目录下建立备份文件,但可以设置
;;  统一的备份路径.


;; Emacs使用变量`make-backup-files'来检测是否对文件进行备份.
;;
;; 不备份文件
(setq make-backup-files nil)
(setq vc-make-backup-files nil)

;; 文件编码
(prefer-coding-system 'utf-8-unix)

(provide 'zcodes-files)
