;; 难以分类的配置

(add-hook 'prog-mode-hook
	  (lambda ()
	    (font-lock-add-keywords nil
				    '(("\\<\\(FIXME\\|TODO\\|BUG\\|NOTES\\):"
				       1
				       font-lock-warning-face t)))))
				    
						    

(provide 'zcodes-misc)
