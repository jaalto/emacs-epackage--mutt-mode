(setq auto-mode-alist
      (delete (rassoc 'mutt-mode-epackage-activate auto-mode-alist)
	      auto-mode-alist))
(provide 'mutt-mode-epackage-uninstall)
