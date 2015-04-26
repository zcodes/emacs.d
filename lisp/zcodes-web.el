(require-package 'web-mode)
(require-package 'emmet-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.dtl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

(add-hook 'web-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil
		  web-mode-markup-indent-offset 4
		  web-mode-attr-indent-offset 4
		  web-mode-css-indent-offset 4
		  web-mode-code-indent-offset 4)))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)

(add-hook 'emmet-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-s-p") 'emmet-prev-edit-point)
	    (local-set-key (kbd "C-s-n") 'emmet-next-edit-point)))

(provide 'zcodes-web)
