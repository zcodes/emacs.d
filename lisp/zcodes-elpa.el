;;; Emacs包管理

(require 'package)

;; 第三方仓库
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)

;; (add-to-list 'package-archives
;; 	     '("marmalade" . "https://marmalade-repo.org/packages/"))

;; 包安装路径
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))

;; 从24.4开始,Emacs是用签名来验证包的安全性, 但是一般第三方的包不支持
;; gpg签名, 所以默认情况下会出现无法安装的问题.
;;
;; windows下没有gpg, 导致安装失败，直接设置为不检查
(if (eq window-system 'w32)
    (setq package-check-signature nil)
  (setq package-check-signature 'allow-unsigned))

;; 不同的仓库有同名不同版本的包,可以使用变量`package-pinned-packages'
;; 来指定某个包的仓库
(when (boundp 'package-pinned-packages)
  (setq package-pinned-packages
	'(("org" . "org"))))


;; 安装包
(defun require-package (package &optional min-version no-refresh)
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

(defun require-packages (packages)
  (mapc #'require-package packages))

;;; Fire up package.el
(setq package-enable-at-startup nil)
(package-initialize)

(require-package 'fullframe)
(fullframe list-packages quit-window)

(provide 'zcodes-elpa)
