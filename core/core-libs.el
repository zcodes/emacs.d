;;; core-libs.el --- Common emacs lisp libs.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; 
(unless (fboundp 'with-eavl-after-load)
  (defmacro with-eval-after-load (file &rest body)
    "Execute BODY after FILE is loaded.
FILE is normally a feature name, but it can alse be a file name,
in case that file does not provide any feature."
    (declare (indent defun))
    `(eval-after-load ,file '(progn ,@body))))

;; a modern list library for Emacs.
;; https://github.com/magnars/dash.el  
(el-get-bundle dash
  (eval-after-load "dash" '(dash-enable-font-lock))
  (require 'dash))

;; the long lost Emacs string manipulation library.
;; https://github.com/magnars/s.el
(el-get-bundle elpa:s)

;; header2.el
;; TODO: configure header2.el
;; (el-get-bundle elpa:header2)

(provide 'core-libs)

;;; core-libs.el ends herek.
