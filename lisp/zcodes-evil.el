;;;  使用vim模式的按键绑定, 让小拇指不再疼痛

(require-package 'evil)
(require-package 'evil-leader)

(evil-mode 1)
(global-evil-leader-mode)

(defun zcodes/ibuffer ()
  (interactive)
  (ibuffer nil))

;; leader key binding
(evil-leader/set-key
 "be" 'zcodes/ibuffer)

(provide 'zcodes-evil)
