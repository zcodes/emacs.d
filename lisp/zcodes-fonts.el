;; Fonts:
;; Fira Mono: https://github.com/mozilla/Fira
;; Source Han Sans: https://github.com/adobe-fonts/source-han-sans 

;; common font settings
(set-frame-font "Fira Mono Medium-14")
(set-fontset-font t 'han
		  (font-spec :family "思源黑体 Medium"
			     :size 14.0))

;; mode-line font
(add-hook 'after-init-hook
	  '(lambda ()
	     (set-face-attribute 'mode-line nil
				 :font "Fira Mono 11")))

(provide 'zcodes-fonts)
