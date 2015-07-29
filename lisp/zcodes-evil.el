;;;  使用vim模式的按键绑定, 让小拇指不再疼痛

(require-package 'evil)
(require-package 'evil-leader)

(evil-mode 1)
(global-evil-leader-mode)

(defun zcodes/ibuffer ()
  (interactive)
  (ibuffer nil))

(defun zcodes/speedbar ()
  (interactive)
  (if (and (functionp 'sr-speedbar-select-window)
	   (sr-speedbar-window-exist-p (selected-window)))
      (sr-speedbar-select-window)
    (sr-speedbar-open)))

;; leader key binding
(evil-leader/set-key
  "e"  'eval-last-sexp
  "be" 'zcodes/ibuffer
  "bb" 'sr-speedbar-toggle
  "f"  'ido-find-file)


(provide 'zcodes-evil)
