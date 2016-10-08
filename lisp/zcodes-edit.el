;;; zcodes-edit.el --- Emacs editing settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(global-linum-mode t)
(global-hl-line-mode t)
;; (hs-minor-mode)

;; parentheses match
(show-paren-mode t)
(setq show-paren-style "parenthesis")

;; editing key bindings
;; use evil key instead n:v and n:J
;; (global-set-key (kbd "C-.") 'set-mark-command)
;; (global-set-key (kbd "C-x j") 'join-line)
(global-set-key (kbd "<f5>") 'revert-buffer)

;; no cursor blinking
(blink-cursor-mode 0)

;; enable the disabled functions.
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'set-goal-column 'disabled nil)

;; y-o-p
(defalias 'yes-or-no-p 'y-or-n-p)

;; use sapce, no tabs
(setq indent-tabs-mode nil)

;; smooth scroll with mouse wheel. 
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't)

;; turn on automatic bracket insertion by pairs.
(electric-pair-mode 1)

;; minibuffer
(setq minibuffer-prompt-properties
      '(readonly t
		 point-entered minibuffer-avoid-prompt
		 face minibuffer-prompt))

(provide 'zcodes-edit)

;;; zcodes-edit.el ends here.
