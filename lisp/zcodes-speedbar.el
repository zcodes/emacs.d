;; 在一个窗口中嵌入speedbar
(require-package 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-auto-refresh nil)
(global-set-key (kbd "M-s M-s") 'sr-speedbar-toggle)
(global-set-key (kbd "M-s M-b") 'sr-speedbar-select-window)

(setq speedbar-use-images nil)
(setq speedbar-show-unknown-files t)
(setq speedbar-update-flags nil)

(provide 'zcodes-speedbar)
