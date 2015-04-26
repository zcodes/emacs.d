;;; Emacs GUI 配置

;; suppress GUI fetures
(setq use-file-diglog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message ";; Enjoy hacking !\n;;\n\n")

(tool-bar-mode 0)
(scroll-bar-mode 0)


(if window-system
    (progn
      (add-to-list 'default-frame-alist '(width . 120))
      (add-to-list 'default-frame-alist '(height . 30))))

(provide 'zcodes-gui-frame)
