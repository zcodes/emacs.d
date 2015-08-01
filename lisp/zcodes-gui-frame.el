;;; Emacs GUI 配置

;; suppress GUI fetures
(setq use-file-diglog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message ";; Enjoy hacking !\n;;\n\n")


(if window-system
    (progn
      (add-to-list 'default-frame-alist '(width . 120))
      (add-to-list 'default-frame-alist '(height . 30))))

;; switch frame with number
(el-get-bundle window-number)
(if (functionp 'window-number-mode)
    (progn (window-number-mode 1)
	   (window-number-meta-mode 1)
	   (global-set-key (kbd "C-x o") 'window-number-switch)))
		    
(provide 'zcodes-gui-frame)

