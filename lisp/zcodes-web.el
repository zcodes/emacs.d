;;; zcodes-web.el --- Web files editting support.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle web-mode
  :type github
  :pkgname "zcodes/web-mode")

(el-get-bundle emmet-mode)
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.dtl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

(add-hook 'web-mode-hook
	  (lambda ()
	    ;; (electric-pair-mode 0)
	    (setq indent-tabs-mode nil
		  web-mode-markup-indent-offset 2
		  web-mode-attr-indent-offset 2
		  web-mode-css-indent-offset 2
		  web-mode-code-indent-offset 2
		  web-mode-enable-auto-pairing nil)))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)

(add-hook 'emmet-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-s-p") 'emmet-prev-edit-point)
	    (local-set-key (kbd "C-s-n") 'emmet-next-edit-point)))

(provide 'zcodes-web)
;;; zcodes-web.el ends here.
