(el-get-bundle evil)
(el-get-bundle evil-leader)

;; Enable `evil-leader-mode' first
(global-evil-leader-mode)
(evil-mode 1)

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

;; Disable `evil-leader-mode' in `Info-mode' by removing `Info-mode'
;; from `evil-motion-state-modes'
(setq evil-motion-state-modes (delq 'Info-mode evil-motion-state-modes))
(add-to-list 'evil-emacs-state-modes 'Info-mode)

(provide 'zcodes-evil)
