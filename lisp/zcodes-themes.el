(el-get-bundle zcodes/emacs-material-theme
  (add-to-list 'custom-theme-load-path default-directory)
  (load-theme 'material t))

(provide 'zcodes-themes)
