;;; zcodes-gui-frame --- Emacs GUI settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; suppress gui fetures
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq use-file-diglog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message ";;\n;; Enjoy hacking !\n;;\n\n")

(if window-system
    (progn
      (add-to-list 'default-frame-alist '(width . 120))
      (add-to-list 'default-frame-alist '(height . 30))))

;; switch frame with number
(el-get-bundle zcodes/emacs-window-number
  (autoload 'window-number-mode "window-number"
    "A global minor mode that enables selection of windows
    according to numbers with the C-x C-j prefix. Another mode,
    `window-number-meta-mode' enables the use of the M- prefix."
    t)
  (autoload 'window-number-meta-mode "window-number"
    "A global minor mode that enables use of the M- prefix to
    select windows, use `window-number-mode' to display the
    window numbers in the mode-line." t)
  (window-number-mode 1)
  (window-number-meta-mode 1))

(provide 'zcodes-gui-frame)

;;; zcodes-gui-frame.el ends here.
