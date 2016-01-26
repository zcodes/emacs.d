(el-get-bundle zcodes/emacs-material-theme
  (add-to-list 'custom-theme-load-path default-directory)
  (load-theme 'material-light t))

(provide 'zcodes-themes)
