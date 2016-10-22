;;; zcodes-php.el --- PHP mode settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle php-mode)
(el-get-bundle php-extras
  :type github
  :pkgname "arnested/php-extras")

(add-hook 'php-mode-hook
	  '(lambda ()
	     (progn
	       (php-enable-symfony2-coding-style)
	       (subword-mode 1)
	       (local-set-key (kbd "C-.") 'set-mark-command)
	       (local-set-key (kbd "C-,") 'php-show-arglist))))

(provide 'zcodes-php)
;;; zcodes-php.el ends here.
