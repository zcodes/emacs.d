;;; zcodes-slime.el --- Emacs Slime.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(add-to-list 'load-path "~/.emacs.d/vendor/slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "~/.local/bin/sbcl")
(setq slime-contribs '(slime-fancy
		       slime-indentation
		       slime-sbcl-exts
		       slime-scratch))

(setq slime-complete-symbol*-fancy t)
(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
(slime-setup)

;; enable info doc for slime
;; Note: also need `ginstall-info' install the info file.
(eval-after-load 'info
  '(progn
     (info-initialize)
     (add-to-list 'Info-directory-list
		  (expand-file-name
		   "vendor/slime/doc" user-emacs-directory))))

(provide 'zcodes-slime)
;;; zcodes-slime.el ends here.
