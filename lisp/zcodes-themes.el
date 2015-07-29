;;; Emacs 主题配置

;; monokai theme
;; (require-package 'monokai-theme)
;; (load-theme 'monokai t)

;; 加载默认主题
;; (if window-system
;;     (load-theme 'zcodes-light t))

(defun light()
  (interactive)
  (load-theme 'zcodes-light t)
  (set-frame-font "Anonymous Pro 11"))
  
;(el-get-bundle dream-theme)
;(el-get-bundle color-theme-zenburn)
;(el-get-bundle color-theme-tomorrow)
(el-get-bundle monokai-theme)
;; load theme monokai and small turning
(setq monokai-use-variable-pitch nil 
      monokai-height-minus-1 1.0
      monokai-height-plus-1 1.0
      monokai-height-plus-2 1.0
      monokai-height-plus-3 1.0
      monokai-height-plus-4 1.0)
(load-theme 'monokai t)
(mapc (lambda (face)
	(set-face-attribute face nil
			    :height (face-attribute 'default :height)))
      (face-list))

(provide 'zcodes-themes)
