;;; Emacs 主题配置

;; monokai theme
;; (require-package 'monokai-theme)
;; (load-theme 'monokai t)

;; 加载默认主题
(if window-system
    (load-theme 'zcodes-light t))

;; monokai theme settings
(defun dark()
  (interactive)
  (setq monokai-use-variable-pitch nil)
  (load-theme 'monokai t)
  (set-frame-font "Source Code Pro 10")
  (mapc (lambda (face)
	  (set-face-attribute face nil
			      :height (face-attribute 'default :height)))
	(face-list)))

(defun light()
  (interactive)
  (load-theme 'zcodes-light t)
  (set-frame-font "Anonymous Pro 11"))
  
(provide 'zcodes-themes)
