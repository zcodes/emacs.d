(package-initialize)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq use-file-dialog nil
      use-dialog-box nil
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      initial-scratch-message ";;\n;; Enjoy hacking ...\n;;\n\n")

(set-frame-font "Inziu Iosevka SC Bold 14")
(dolist (charset '(han symbol cjk-misc unicode))
  (set-fontset-font t charset (font-spec
			       :family "Inziu Iosevak SC"
			       :weight 'bold
			       :size 14.0)))

(when window-system
  (add-to-list 'default-frame-alist '(width . 120))
  (add-to-list 'default-frame-alist '(height . 30)))

(prefer-coding-system 'utf-8-unix)
