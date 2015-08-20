(el-get-bundle emacs-neotree)

(evil-define-key 'normal neotree-mode-map
  (kbd "RET") (neotree-make-executor
		:file-fn 'neo-open-file
		:dir-fn 'neo-open-dir)
  (kbd "TAB") (neotree-make-executor
	      :fir-fn 'neo-open-dir)

  (kbd "|") (neotree-make-executor
	    :file-fn 'neo-open-file-vertical-split)

  (kbd "-") (neotree-make-executor
	     :file-fn 'neo-open-file-horizontal-split)

  (kbd "C-d") (neotree-make-executor
       :dir-fn 'neo-open-dired)

  "g" 'neotree-refresh
  "q" 'neotree-hide
  "p" 'neotree-previous-line
  (kbd "C-p") 'neotree-previous-line
  "n" 'neotree-next-line
  (kbd "C-n") 'neotree-next-line
  "A" 'neotree-stretch-toggle
  "U" 'neotree-select-up-node
  "D" 'neotree-select-down-node
  "H" 'neotree-hidden-file-toggle
  "S" 'neotree-select-previous-sibling-node
  "s" 'neotree-select-next-sibling-node

  "c" 'neotree-change-root
  "+" 'neotree-create-node
  "r" 'neotree-rename-node
  "d" 'neotree-delete-node
  )

(provide 'zcodes-neotree)
