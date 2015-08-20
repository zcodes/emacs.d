(el-get-bundle less-css-mode)

;; Contacting host: elpa.gnu.org:80 [2 times]
;; Failed to download `gnu' archive.
;;
;; Windows 下因没有gpg的问题，只能设置`package-check-signature'为nil解
;; 决。
;; (require-package 'rainbow-mode)
(el-get-bundle rainbow-mode)

(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)
(add-hook 'js2-mode-hook 'rainbow-mode)

(provide 'zcodes-css)
