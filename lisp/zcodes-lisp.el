;;; zcodes-lisp.el --- Emacs lisp settings
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle 'elisp-slime-nav)
(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))
(add-hook 'emacs-lisp-mode-hook (lambda () (setq mode-name "ELisp")))

(dolist (mode '(emacs-lisp-mode ielm-mode))
  (evil-leader/set-key-for-mode mode
    "." 'elisp-slime-nav-find-elisp-thing-at-point
    "," 'pop-tag-mark
    "med" 'elisp-slime-nav-describe-elisp-thing-at-point))


(el-get-bundle 'ipretty)
(ipretty-mode 1)

(provide 'zcodes-lisp)
;;; zcodes-lisp.el ends here.
