;; 显示行号
(global-linum-mode t)

;; 括号匹配
(show-paren-mode t)
(setq show-paren-style "parenthesis")

;; 编辑快捷键设置
(global-set-key (kbd "C-.") 'set-mark-command)
(global-set-key (kbd "C-x j") 'join-line)
(global-set-key (kbd "<f5>") 'revert-buffer)

;; 启用ido
(ido-mode t)

;; 禁用光标闪烁
(blink-cursor-mode 0)

;; 启用被禁用的功能
(put 'narrow-to-region 'disable nil)
(put 'narrow-to-page 'disable nil)
(put 'narrow-to-defun 'disable nil)
(put 'set-goal-column 'disable nil)

;; y-o-p
(defalias 'yes-or-no-p 'y-or-n-p)

;; 使用空格替代tab
(setq indent-tabs-mode nil)

;; 鼠标滚轮平滑滑动
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't)

;; turn on automatic bracket insertion by pairs.
(electric-pair-mode 1)

(provide 'zcodes-edit)
