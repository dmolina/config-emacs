(use-package web-mode
  :ensure t
  :mode ("\\.html" "\\.tpl\\.php" "\\.css")
  :config
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html\\'" . emmet-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . emmet-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . emmet-mode))
)

(use-package emmet-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html\\'" . emmet-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . emmet-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . emmet-mode))
)

(use-package impatient-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html\\'" . impacient-mode))
  )

(use-package simple-httpd
  :ensure t
  :config
  ;(setq httpd-root "~/Descarcas/testweb/")
  (setq httpd-root "~/Descarcas/testweb/")
  (httpd-start)
)

;; (use-package rainbow-mode
;;   :ensure t
;;   (add-hook 'css-mode-hook 'rainbow-mode)
;; )

