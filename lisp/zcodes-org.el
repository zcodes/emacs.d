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
  (setq zcodes/orgtable-face-font "Consolas 11")
  (setq zcodes/fontset-orgtable
	(create-fontset-from-ascii-font zcodes/orgtable-face-font))
  (dolist (charset '(han symbol cjk-misc))
    (set-fontset-font zcodes/fontset-orgtable charset
		      (font-spec :family "Microsoft Yahei"
				 :size 12.0)))

  (defun zcodes/org-table-font ()
    (set-face-attribute 'org-table nil
			:font zcodes/orgtable-face-font
			:fontset zcodes/fontset-orgtable))
  ;; and hook for org-mode
  (add-hook 'org-mode-hook 'zcodes/org-table-font))

(add-hook 'org-mode-hook
	  '(lambda ()
	     (evil-leader/set-key-for-mode 'org-mode
	       "'" 'org-edit-src-exit)))

;;  org-export
(setq org-html-doctype "html5")

(provide 'zcodes-org)

;;; zcodes-org.el ends here.
