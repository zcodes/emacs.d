;;; zcodes-org.el --- Org-mode support.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; org-8.3.4
(add-to-list 'load-path "~/.emacs.d/vendor/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/vendor/org-mode/contrib/lisp")

;; global keybinds for org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done t)

;; 单独设置org-table的字体, 保证有中文是表格对齐
(when (window-system)
  (setq fontset-orgtable (create-fontset-from-ascii-font "Fira Mono Medium-14"))
  (set-fontset-font fontset-orgtable 'han
		    (font-spec :family "思源黑体 Medium"
			       :size 16.5))

  (defun zcodes/org-table-font ()
    (set-face-attribute 'org-table nil
			:fontset fontset-orgtable))
  (add-hook 'org-mode-hook 'zcodes/org-table-font))

(add-hook 'org-mode-hook
	  '(lambda ()
	     (evil-leader/set-key-for-mode 'org-mode
	       "'" 'org-edit-src-exit)))

;;  org-export
(setq org-html-doctype "html5")

(provide 'zcodes-org)

;;; zcodes-org.el ends here.
