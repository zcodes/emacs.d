;;; Org Mode
;;
;;  http://orgmode.org/

(require-package 'org)
(require-package 'org-plus-contrib)

;; 按键绑定
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


(provide 'zcodes-org)
