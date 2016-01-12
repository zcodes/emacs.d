;; show line numbers
(global-linum-mode t)

;; parentheses match
(show-paren-mode t)
(setq show-paren-style "parenthesis")

;; editing key bindings
(global-set-key (kbd "C-.") 'set-mark-command)
(global-set-key (kbd "C-x j") 'join-line)
(global-set-key (kbd "<f5>") 'revert-buffer)

;; enable ido-mode
(ido-mode t)

;; no cursor blinking
(blink-cursor-mode 0)

;; enable the disabled functions.
(put 'narrow-to-region 'disable nil)
(put 'narrow-to-page 'disable nil)
(put 'narrow-to-defun 'disable nil)
(put 'set-goal-column 'disable nil)

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
