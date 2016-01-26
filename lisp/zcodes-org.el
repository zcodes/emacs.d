;; TODO: el-get the official org-mode
;; (add-to-list 'package-archives
;;              '("org" . "http://orgmode.org/elpa/"))

;; (el-get-bundle elpa:org)

;; keybinds for org-mode 
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done t)

;; 单独设置org-table的字体, 保证有中文是表格对齐
(setq fontset-orgtable (create-fontset-from-ascii-font "Fira Mono Medium-14"))
(set-fontset-font fontset-orgtable 'han
		  (font-spec :family "Source Han Sans SC Medium"
			     :size 16.5))
(defun zcodes/org-table-font ()
  (set-face-attribute 'org-table nil
		      :fontset fontset-orgtable))
(add-hook 'org-mode-hook 'zcodes/org-table-font)

;;  org-export
(setq org-html-doctype "html5")

(provide 'zcodes-org)
