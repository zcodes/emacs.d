;; 在一个窗口中嵌入speedbar
(el-get-bundle sr-speedbar)

(require 'speedbar)
(setq sr-speedbar-skip-other-window-p t
      sr-speedbar-right-side nil
      sr-speedbar-auto-refresh nil)

(setq speedbar-use-images nil
      speedbar-show-unknown-files t
      speedbar-update-flags nil

      ;; speedbar-buffers-key-map nil
      ;; speedbar-file-key-map nil
      )

;; (lazy-set-key
;;  '(
;;    ("j" . speedbar-next)
;;    ("k" . speedbar-prev)
;;    ("C-m" . speedbar-expand-line))
;;  speedbar-mode-map)

(define-key speedbar-file-key-map "\C-m" 'speedbar-expand-line)
(define-key speedbar-buffers-key-map "\C-m" 'speedbar-expand-line)
(provide 'zcodes-speedbar)
