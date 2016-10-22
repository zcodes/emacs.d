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

(el-get-bundle 'org-mode)
(el-get-bundle 'org-bullets)

;; global keybinds for org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done t
      org-hide-emphasis-markers t
      org-catch-invisible-edits 'show
      org-export-coding-system 'utf-8
      org-html-validation-link nil
      org-tags-column 80
      org-html-doctype "html5")

;; the default value of `org-directory' is "~/org" and you can change
;; it in "~/.emacs.d/custom.el"
(defun zcodes/org-file-path (file)
  "concat FILE with `org-directory'"
  (concat org-directory file))

(after-load "custom.el"
  (progn
    (setq org-default-notes-file
	  (zcodes/org-file-path "/notes.org"))
    (setq org-capture-templates
	  `(("t" "todo" entry (file ,(zcodes/org-file-path "/todo.org"))
	     "* TODO %?\n%U\n" :clock-resume t)
	    ("n" "note" entry (file "")
	     "* %? :NOTE:\n%U\n" :clock-resume t)
	    ("j" "journal" entry (file+datetree ,(zcodes/org-file-path "/journal.org"))
	     "* %?\nEntered on %<[%H:%M:%S]>\n %i\n" :clock-resume t)))))

(add-hook 'org-mode-hook
	  '(lambda ()
	     (evil-leader/set-key-for-mode 'org-mode
	       "'" 'org-edit-src-exit)))

;; enable org-bullets
(add-hook 'org-mode-hook
	  (lambda ()
	    (org-bullets-mode 1)))

;; org table font settings is comment here for example.
;; custom setting it in your ~/.emacs.d/custom.el
;;
;; 单独设置org-table的字体, 保证有中文是表格对齐
;; (when (window-system)
;;   (setq zcodes/orgtable-face-font "Consolas 11")
;;   (setq zcodes/fontset-orgtable
;; 	(create-fontset-from-ascii-font zcodes/orgtable-face-font))
;;   (dolist (charset '(han symbol cjk-misc))
;;     (set-fontset-font zcodes/fontset-orgtable charset
;; 		      (font-spec :family "Microsoft Yahei"
;; 				 :size 12.0)))

;;   (defun zcodes/org-table-font ()
;;     (set-face-attribute 'org-table nil
;; 			:font zcodes/orgtable-face-font
;; 			:fontset zcodes/fontset-orgtable))
;;   ;; and hook for org-mode
;;   (add-hook 'org-mode-hook 'zcodes/org-table-font))

(provide 'zcodes-org)
;;; zcodes-org.el ends here.
