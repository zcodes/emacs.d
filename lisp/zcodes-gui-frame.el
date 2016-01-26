;; suppress gui fetures
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq use-file-diglog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message ";;\n;; Enjoy hacking !\n;;\n\n")

(if window-system
    (progn
      (add-to-list 'default-frame-alist '(width . 120))
      (add-to-list 'default-frame-alist '(height . 30))))

;; switch frame with number
;; TODO: window number theme look.
(el-get-bundle window-number)
(when (functionp 'window-number-mode)
  (window-number-mode 1)
  (window-number-meta-mode 1))
		    
(provide 'zcodes-gui-frame)

