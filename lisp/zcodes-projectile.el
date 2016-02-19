(el-get-bundle 'projectile)

(projectile-global-mode)
(setq projectile-enable-caching t)

(evil-leader/set-key
  "pf" 'projectile-find-file)

(provide 'zcodes-projectile)
