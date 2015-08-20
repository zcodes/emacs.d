(el-get-bundle ggtags)
(if (functionp 'evil-leader/set-key)
    (evil-leader/set-key
      "tf" 'ggtags-find-definition
      "tt" 'pop-tag-mark))
(provide 'zcodes-gtags)
