(when (and (zcodes/is-linux)
	   (file-exists-p "~/.local/bin"))
  (setenv "PATH"
	  (concat (expand-file-name "~/.local/bin") ":" (getenv "PATH"))))

(provide 'zcodes-paths)
