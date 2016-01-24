(el-get-bundle evil)
(el-get-bundle evil-leader)

(evil-mode 1)
(global-evil-leader-mode)

(defun zcodes/ibuffer ()
  (interactive)
  (if (get-buffer "*Ibuffer*")
      (switch-to-buffer "*Ibuffer*")
    (ibuffer nil)))

(defun zcodes/speedbar ()
  (interactive)
  (if (and (functionp 'sr-speedbar-select-window)
	   (sr-speedbar-window-exist-p (selected-window)))
      (sr-speedbar-select-window)
    (sr-speedbar-open)))

;; leader key binding
(evil-leader/set-leader "SPC")
(evil-leader/set-key
  "e"  'eval-last-sexp
  "f"  'ido-find-file
  "w"  'window-number-switch
  "be" 'zcodes/ibuffer
  "bb" 'sr-speedbar-toggle
  )

(provide 'zcodes-evil)
