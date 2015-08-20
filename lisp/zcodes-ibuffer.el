(el-get-bundle ibuffer-vc)

(with-eval-after-load 'ibuffer
  (define-ibuffer-column size-h
    (:name "Size" :inline t)
    (cond
     ((> (buffer-size) 1000000) (format "%7.1fM" (/ (buffer-size) 1000000.0)))
     ((> (buffer-size) 1000) (format "%7.1fK" (/ (buffer-size) 1000.0)))
     (t (format "%8d" (buffer-size))))))

(with-eval-after-load 'ibuffer
  (require 'ibuffer-vc))

;; 重新绑定ibuffer中上下移动和刷新
(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (progn
	       (local-set-key (kbd "j") 'ibuffer-forward-line)
	       (local-set-key (kbd "k") 'ibuffer-backward-line)
	       (local-set-key (kbd "r") 'ibuffer-update))))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(defun ibuffer-set-up-preferred-filters ()
  (ibuffer-vc-set-filter-groups-by-vc-root)
  (unless (eq ibuffer-sorting-mode 'filename/process)
    (ibuffer-do-sort-by-filename/process)))

(add-hook 'ibuffer-hook 'ibuffer-set-up-preferred-filters)

(setq ibuffer-formats
      '((mark modified read-only vc-status-mini " "
	      (name 28 28 :left :elide)
	      " "
	      (size-h 9 -1 :right)
	      " "
	      (mode 16 16 :left :elide)
	      " "
	      filename-and-process)
	(mark modified read-only vc-status-mini " "
	      (name 28 28 :left :elide)
	      " "
	      (size-h 9 -1 :right)
	      " "
	      (mode 16 16 :left :elide)
	      " "
	      (vc-status 16 16 :left)
	      " "
	      filename-and-process)))

(setq ibuffer-filter-group-name-face 'font-lock-doc-face)

(provide 'zcodes-ibuffer)
