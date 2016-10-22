;;; core-system.el --- Emacs and os informations.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(defun zcodes/is-windows ()
  "Check if using `Windows'."
  (string-equal system-type "windows-nt"))

(defun zcodes/is-linux ()
  "Check if using `GNU/Linux'."
  (string-equal system-type "gnu/linux"))

(defun zcodes/has-gui ()
  "check if has gui or not"
  window-system)

(defun zcodes/system-info ()
  "Print system information."
  (interactive)
  (message (format (concat "System Type: %s\n"
			   "Emacs Version: %s\n"
			   "Evil Version: %s")
		   system-type
		   emacs-version
		   evil-version)))

(provide 'core-system)
;;; core-system.el ends here.
