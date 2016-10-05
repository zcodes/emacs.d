 ;;; zcodes-neotree.el --- Vim like Neotree Plugin.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(el-get-bundle emacs-neotree)

;; just use ascii characters for display
(setq neo-theme 'ascii)

;; key bindings for neotree
;; make it behaving like vim's neotree
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

  "r" 'neotree-refresh
  "q" 'neotree-hide

  "p" 'neotree-previous-line
  "k" 'neotree-previous-line
  (kbd "C-p") 'neotree-previous-line

  "n" 'neotree-next-line
  "j" 'neotree-next-line
  (kbd "C-n") 'neotree-next-line

  "A" 'neotree-stretch-toggle
  "U" 'neotree-select-up-node
  "u" 'neotree-select-up-node
  "D" 'neotree-select-down-node
  "H" 'neotree-hidden-file-toggle
  "S" 'neotree-select-previous-sibling-node
  "s" 'neotree-select-next-sibling-node

  "c" 'neotree-change-root
  "+" 'neotree-create-node
  "ma" 'neotree-create-node
  "mm" 'neotree-rename-node
  "md" 'neotree-delete-node
  )

(evil-leader/set-key
  "nn" 'neotree
  "nc" 'neotree-hide)

;; unbind the default key for macro, use vim style instead.
;; use [f3] to show or focus neotree and [f4] hide it.
;;
;; Note: I just setting it behaves like my vim settings, maybe it is
;; not a good change.
(global-set-key [f3] 'neotree)
(global-set-key [f4] 'neotree-hide)


(provide 'zcodes-neotree)

;;; zcodes-neotree.el ends here.
