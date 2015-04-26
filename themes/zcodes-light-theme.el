;;; zcodes-light-theme.el --- A light color theme for Emacs.

;; Copyright (C) 2015

;; Author: zcodes <zcodes@163.com>
;; URL: https://github.com/zcodes/zcodes-light-theme
;; Version:
;;

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A port of Sublime Text theme LAZY for Emacs.
;;
;;
;;; Code:

(unless (>= emacs-major-version 24)
  (error "This theme require Emacs 24 or later."))

(deftheme zcodes-light "The zcodes light color theme")

(custom-theme-set-faces
 'zcodes-light
 '(default ((t (:background "#FFFFFF" :foreground "#000000" :weight normal))))
 '(column ((t (:height 1.2))))
 '(cursor ((t (:background "#7C7C7C"))))
 '(fringe ((t (:background "#FFFFFF"))))
 '(linum ((t (:background "#FFFFFF" :foreground "#B6B6B6"))))
 
 '(mode-line ((t (:background "#DCDCDC" :foreground "#5D5D5D"))))
 '(mode-line-inactive ((t (:background "#EFEFEF" :foreground "#5D5D5D"))))
 '(mode-line-buffer-id ((t (:weight normal :foreground "#222222"))))
 
 '(highlight ((t (:background "#E3FC8D"))))
 '(hl-line ((t (:background "#F6FDCD"))))
 '(region ((t (:background "#E3FC8D"))))
 
 '(minibuffer-prompt ((t (:foreground "#3B5BB5"))))

 '(font-lock-comment-face ((t (:foreground "#8C868F"))))
 '(font-lock-constant-face ((t (:foreground "#3B5BB5"))))
 '(font-lock-variable-name-face ((t (:foreground "#000000"))))
 '(font-lock-keyword-face ((t (:foreground "#FF7800"))))
 '(font-lock-warning-face ((t (:foreground "#D62A28"))))
 '(font-lock-string-face ((t (:foreground "#409B1C"))))
 '(font-lock-function-name-face ((t (:foreground "#3E4558"))))

 '(show-paren-match ((t (:background "#E3FC8D"))))
 '(show-paren-mismatch ((t (:background "#D62A28"))))

 '(outline-1 ((t (:foreground "#3B5BB5"))))
 '(outline-2 ((t (:foreground "#409B1C"))))
 '(outline-3 ((t (:foreground "#FF7800"))))
 '(outline-4 ((t (:foreground "#671EBB"))))
 '(outline-5 ((t (:foreground "#C99E00"))))
 '(outline-6 ((t (:foreground "#3E999F"))))
 '(outline-7 ((t (:foreground "#3E4558"))))

 '(org-document-title ((t (:weight normal :foreground "midnight blue"))))
 ;; '(org-table ((t (:height 118 :foreground "Blue1"))))

 ;; End of theme definitions !
 )

(provide-theme 'zcodes-light)
