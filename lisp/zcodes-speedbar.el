;;; zcodes-speedbar --- Emacs speedbar settings.
;;
;; Copyright (c) 2016 zcodes
;;
;; Author: zcodes <zcodes@qq.com>
;; URL: https://github.com/zcodes/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


;; use speedbar without separated frame.
(el-get-bundle sr-speedbar)

;; settings for speedbar
(require 'speedbar)
(setq sr-speedbar-skip-other-window-p t
      sr-speedbar-right-side nil
      sr-speedbar-auto-refresh nil)

(setq speedbar-use-images nil
      speedbar-show-unknown-files t
      speedbar-update-flags nil)

(provide 'zcodes-speedbar)
;;; zcodes-speedbar.el ends here.
