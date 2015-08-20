(el-get-bundle yaml-mode)
(setq yaml-indent-offset 4)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(provide 'zcodes-yaml)
