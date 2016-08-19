;;; core-evil.el --- Evil of Emacs !
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; use elpa install evil for the lack of `hg' and `make' on Windows.
(el-get-bundle elpa:evil)
(el-get-bundle elpa:goto-chg)
(el-get-bundle elpa:undo-tree)
(el-get-bundle elpa:evil-leader)

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

;; global evil key settings
(evil-leader/set-key
  "f" 'ido-find-file)

(evil-leader/set-key
  "ee" 'eval-last-sexp)

(evil-leader/set-key
  "bl" 'zcodes/ibuffer
  "bb" 'ido-switch-buffer
  "bs" 'sr-speedbar-toggle
  "bd"  'ido-dired)

;; disable `evil-leader-mode' in `Info-mode' by removing `Info-mode'
;; from `evil-motion-state-modes'
(setq evil-motion-state-modes (delq 'Info-mode evil-motion-state-modes))
(add-to-list 'evil-emacs-state-modes 'Info-mode)

(provide 'core-evil)

;;; core-evil.el ends here.
