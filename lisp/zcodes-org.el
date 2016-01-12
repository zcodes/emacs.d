(el-get-bundle org)

;; keybinds for org-mode 
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done 'note)

;; 单独设置org-table的字体, 保证有中文是表格对齐
(create-fontset-from-fontset-spec
 "-outline-PT Mono-normal-normal-normal-mono-13-*-*-*-c-*-fontset-orgtable")

(set-fontset-font "fontset-orgtable" 'han
		  (font-spec
		   :family "Source Han Sans SC"
		   :size 12.0))

(defun zcodes/custom-org-table-font ()
  (set-face-attribute 'org-table nil
		      :fontset "fontset-orgtable"))

(add-hook 'org-mode-hook 'zcodes/custom-org-table-font)

;;  org-export
(setq org-html-doctype "html5")

(provide 'zcodes-org)
