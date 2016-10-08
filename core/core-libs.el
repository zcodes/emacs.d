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

(if (fboundp 'with-eval-after-load)
    (defalias 'after-load 'with-eval-after-load)
  (defmacro after-load (feature &rest body)
    "After FEATURE is loaded, evaluate BODY"
    (declare (indent defun))
    `(eval-after-load ,feature '(progn ,@body))))

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
