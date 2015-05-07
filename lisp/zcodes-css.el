(require-package 'less-css-mode)
(require-package 'rainbow-mode)

(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)
(add-hook 'js2-mode-hook 'rainbow-mode)

(provide 'zcodes-css)
