(el-get-bundle zcodes/emacs-material-theme
  (add-to-list 'custom-theme-load-path default-directory)
  (load-theme 'material t))

(defun zcodes/use-light-theme ()
  (interactive)
  (load-theme 'material-light t)
  (force-mode-line-update)
  (powerline-reset))

(defun zcodes/use-dark-theme ()
  (interactive)
  (load-theme 'material t)
  (force-mode-line-update)
  (powerline-reset))

(provide 'zcodes-themes)
