(require-package 'php-mode)

(add-hook 'php-mode-hook
	  '(lambda ()
	     (progn
	       (php-enable-symfony2-coding-style)
	       (subword-mode 1)
	       (local-set-key (kbd "C-.") 'set-mark-command)
	       (local-set-key (kbd "C-,") 'php-show-arglist))))

(provide 'zcodes-php)
