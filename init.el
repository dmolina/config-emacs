; list the packages you want
(setq package-list '(elpy magit viper
			  archive-region
			  auctex auctex-latexmk auto-complete auto-yasnipper
			  change-inner cmake-mode cmake-font-lock
			  ; Programming in C
			  auto-complete-c-headers auto-complete-exuberant-ctags helm-gtags ggtags ctags ctags-update 
			  dired+ dired-imenu direx
			  ; SVC
			  magit monky
			  ; Theme
			  monokai-theme
			  names
			  ; For puml-mode 
			  puml-mode
			  ; Several org-mode
			  ; require org?
			  ob-translate orgit org-pdfview
			  pdf-tools
			  ; Python mode
			  flymake-python-pyflakes pyflakes python-pylint elpy
			  smex
			  sublime-themes
			  swiper
			  tidy tablist
			  use-package
			  vagrant
			  ; w3m mode
			  w3m
			  ; Several modes
			  markdown-mode markdown-mode+ matlab-mode yaml-mode 
			  yasnipper
			  ; Auto-complete of documentation
			  zeal-at-point
			  ; ztree is another tree visualiser
			  ztree))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			("marmalade" . "https://marmalade-repo.org/packages/")
			("melpa" . "http://melpa.org/packages/")))

(add-to-list 'load-path "~/.emacs.d/lisp/")

; activate all the packages (in particular autoloads)
(package-initialize)

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; Viper hotkeys in Emacs
(setq viper-mode t)
(require 'viper)

;Remove init message
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)
(setq ido-create-new-buffer 'always)
(setq inhibit-startup-message t
     inhibit-startup-echo-area-message t)

;(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.tpl$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.bea$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.ojs$" . org-mode))
;(define-key mode-specific-map [?a] 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link)
(setq org-log-done t)

;; tell org to use listings with colors                                        
; (require 'org-latex)
(setq org-export-latex-listings t)
;(add-to-list 'org-export-latex-packages-alist '("" "listings"))
;(add-to-list 'org-export-latex-packages-alist '("" "color"))

(require 'remember)

(add-hook 'remember-mode-hook 'org-remember-apply-template)

(define-key global-map [(control meta ?r)] 'remember)

(global-set-key (kbd "C-c a") 'org-agenda)

(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(ansi-color-faces-vector
  [default default default italic underline success warning error])
'(ansi-color-names-vector
  ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
'(custom-enabled-themes (quote (spolsky)))
'(custom-safe-themes
  (quote
   ("196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "19352d62ea0395879be564fc36bc0b4780d9768a964d26dfae8aad218062858d" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "0092fbd53ec752848780eafa2400933a40f8b8f02ce0d1b49907106b276d1a93" "95a6ac1b01dcaed4175946b581461e16e1b909d354ada79770c0821e491067c6" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "40303ef9ce569164fb1d0b8a941e425191588f25610324ebfa3456264bda1177" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" default)))
'(fci-rule-color "#383838")
'(helm-mode nil)
'(inhibit-startup-screen t)
'(ispell-local-dictionary-alist
  (quote
   (("castellano" "[A-Za-áéíóúÁÉÍÓÚü]" "[^A-Za-áéíóúÁÉÍÓÚ]" "[-]" nil nil "~latin1" iso-8859-1))))
'(org-agenda-files
  (quote
   ("~/.emacs.d/tasks/tareas.org" "~/.emacs.d/tasks/review.org")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
; Quitando fiestas
'(holiday-hebrew-holidays nil)

(global-set-key (kbd "<f3>") 'other-window)
(global-set-key (kbd "<f4>") 'electric-buffer-list)

(setq load-path (append (list (expand-file-name "~/.emacs.d/icalendar")) load-path))
(require 'icalendar)

;(setq load-path (append load-path (list (expand-file-name "~/.emacs.d/google"))))
;(require 'google-calendar)

(setq google-calendar-user           "danimolina@gmail.com")         ;;; GOOGLE USER
(setq google-calendar-code-directory "~/.emacs.d/google/code") ;;; PATH TO THE PYTHON CODE
(setq google-calendar-directory      "/tmp")               ;;; TEMPORARY DIRECTORY
(setq google-calendar-url           "http://www.google.com/calendar/ical/h7rkmngcs7qtk4anl2v0lc8318%40group.calendar.google.com/private-65f81a34d4a1cdfaba2728d2b7ba04ff/basic.ics")  ;;; URL TO YOUR GOOGLE CALENDAR
(setq google-calendar-auto-update    t )                    ;;; DEFINE IF THE CALENDAR IS DOWNLOADED AFTER EVERY MODIFICATION

 (european-calendar)
    (setq calendar-week-start-day 1
          calendar-day-name-array
          ["Domingo" "Lunes" "Martes" 
           "Miercoles" "Jueves" "Viernes" "Sábado"]
          calendar-month-name-array
          ["Enero" "Febrero" "Marzo" "Abril"
           "Mayo" "Junio" "Julio" "Agosto" "Septiembre"
           "Octubre" "Noviembre" "Diciembre"])

(add-hook 'diary-display-hook 'diary-fancy-display)
(add-hook 'org-mode-hgok 'my-org-mode-stuff)

(defun my-org-mode-stuff ()
  (local-set-key (kbd "<f12>")
                 (lambda ()
                   (interactive)
                   (push ?t unread-command-events)
                   (push ?< unread-command-events)
                   (call-interactively 'org-agenda)))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))


;; ORG-MODE with OSD (show events on screen)
(defun rgr/xml-escape (s)
  (setq s (replace-regexp-in-string "'" "&apos;" 
  (replace-regexp-in-string "\"" "&quot;"
  (replace-regexp-in-string "&" "&amp;" 
  (replace-regexp-in-string "<" "&lt;"
  (replace-regexp-in-string ">" "&gt;" s)))))))

(when window-system
  (defun rgr/osd-display (id msg &optional delay vattrib hattrib font) 
    "Display a message msg using OSD. Currently requires gnome-osd-client"
    (unless vattrib (setq vattrib "top"))
    (unless hattrib (setq hattrib "right"))
    (unless delay (setq delay 5000))
    (unless font (setq font "Arial 12"))
    (save-window-excursion
      (shell-command
       (format
	"gnome-osd-client -f \"<message id='%s' osd_fake_translucent_bg='off' osd_font='%s' animations='on' hide_timeout='%d' osd_vposition='%s' osd_halignment='%s'>%s</message>\""    
	id
	font
	delay
	vattrib
	hattrib
	(rgr/xml-escape msg)
	)))))

(when window-system
  (setq appt-display-format 'window)
  (defun org-osd-display (min-to-app new-time msg)
    (rgr/osd-display msg msg -1 "center" "center" "Verdana 20"))
  (setq appt-disp-window-function (function org-osd-display))
  ;; Run once, activate and schedule refresh
  (run-at-time nil 600 'org-agenda-to-appt)
  (appt-activate t))


(require 'autoinsert)
(auto-insert-mode)  ;;; Adds hook to find-files-hook
(setq auto-insert-directory "~/.emacs.d/orgtemplates/") ;;; Or use custom, *NOTE* Trailing slash important
(setq auto-insert-query nil) ;;; If you don't want to be prompted before insertion
(define-auto-insert "\.tpl" "latex.txt")
(define-auto-insert "\.bea" "beamer.txt")
(define-auto-insert "\.ojs" "reveal.txt")
(add-hook 'find-file-hooks 'auto-insert)
(setq org-agenda-skip-scheduled-if-deadline-is-shown 'repeated-after-deadline)

(global-set-key (kbd "C-c b") 'org-beamer-select-environment)
(put 'downcase-region 'disabled nil)


; Add reftex in org-mode (Bibtex for org-mode)
(defun org-mode-reftex-setup ()
(load-library "reftex")
(and (buffer-file-name)
(file-exists-p (buffer-file-name))
(reftex-parse-all))
(define-key org-mode-map (kbd "C-c )") 'reftex-citation)
)
(add-hook 'org-mode-hook 'org-mode-reftex-setup)

;; Org-Gnuplot
(defun fd-switch-dictionary()
      (interactive)
      (let* ((dic ispell-current-dictionary)
    	 (change (if (string= dic "british") "castellano" "british")))
        (ispell-change-dictionary change)
        (message "Dictionary switched from %s to %s" dic change)
        ))
      (global-set-key (kbd "<f8>")   'fd-switch-dictionary)
    
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c-mode 'set-newline-and-indent)


;; tell org to use listings
;(setq org-export-latex-listings t)

;; you must include the listings package
;(add-to-list 'org-export-latex-packages-alist '("" "listings"))

;; if you want colored source code then you need to include the color package
;(add-to-list 'org-export-latex-packages-alist '("" "color"))

;; colors
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-billw)

;; mouse wheel scroll

(defun up-slightly () (interactive) (scroll-up 5))
(defun down-slightly () (interactive) (scroll-down 5))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)
      
(defun up-one () (interactive) (scroll-up 1))
(defun down-one () (interactive) (scroll-down 1))
(global-set-key [S-mouse-4] 'down-one)
(global-set-key [S-mouse-5] 'up-one)
      
(defun up-a-lot () (interactive) (scroll-up))
(defun down-a-lot () (interactive) (scroll-down))
(global-set-key [C-mouse-4] 'down-a-lot)
(global-set-key [C-mouse-5] 'up-a-lot)

; Must have org-mode loaded before we can configure org-babel
;(require 'org-install)

; Some initial langauges we want org-babel to support
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '(
;;    (sh . t)
;;    (python . t)
;;    (R . t)
;;    (ruby . t)
;;    (ditaa . t)
;;    (dot . t)
;;    (octave . t)
;;    (sqlite . t)
;;    (perl . t)
;;    ))
;;  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)

; Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
; (setq org-confirm-babel-evaluate nil)

;; speedbar configuration

; (setq org-export-latex-minted nil)
;(add-to-list 'org-export-latex-packages-alist '("" "minted"))
;(setq org-latex-to-pdf-process
;  '("pdflatex --shell-escape -interaction nonstopmode %s"))

; Activa C-c C-v
(cua-mode t)


; Set Capture
;(setq org-default-notes-file (concat org-directory "/notes.org"))
;(define-key global-map "\C-cc" 'org-capture)
;(global-set-key (kbd "<f6>") 'org-capture)

(setq x-super-keysym 'meta)
(setq load-path (cons "/home/dmolina/.emacs.d/" load-path))
;(require 'mercurial)

; Activate ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)

(require 'tramp)

; Load org2blog, to write to wordpress
; No funciona con páginas gratuitas de wordpress, el xmlrpc no parece estar activado.
;(setq load-path (cons "~/.emacs.d/org2blog/" load-path))
;(require 'org2blog-autoloads)

;(setq org2blog/wp-blog-alist
;      '(("cuartodelibros"
;         :url "http://cuartodelibros.wordpress.com/xmlrpc.php"
;
 ;        :username "princelev")))
(setq org-publish-project-alist
   '(("blog" .  (:base-directory "~/Personal/blog/source/org_posts/"
                                    :base-extension "org"
                                    :publishing-directory "~/Personal/blog/source/_posts/"
                                    :sub-superscript ""
                                    :recursive t
                                    :publishing-function org-publish-org-to-html
                                    :headline-levels 4
                                    :html-extension "markdown"
                                    :body-only t))))

(setq org-export-latex-listings 'listings)

;(setq-default indent-tabs-mode nil)
;(setq-default tab-width 4)
;(setq indent-line-function 'insert-tab)
;
;(add-hook 'java-mode-hook
;	  (lambda ()
;	    "Treat Java 1.5 @-style annotations as comments."
;	    (setq c-comment-start-regexp "(@|/(/|[*][*]?))")
;	    (modify-syntax-entry ?@ "< b" java-mode-syntax-table)))
;
;(add-hook 'java-mode-hook (lambda ()
;			    (setq c-basic-offset 4)))


;; Hippie mode
  (setq dcsh-command-list '("all_registers"
                              "check_design" "check_test" "compile" "current_design"
                              "link" "uniquify"
                              "report_timing" "report_clocks" "report_constraint"
                              "get_unix_variable" "set_unix_variable"
                              "set_max_fanout"
                              "report_area" "all_clocks" "all_inputs" "all_outputs"))
    
    (defun he-dcsh-command-beg ()
      (let ((p))
        (save-excursion
          (backward-word 1)
          (setq p (point)))
        p))
    
    (defun try-expand-dcsh-command (old)
      (unless old
        (he-init-string (he-dcsh-command-beg) (point))
        (setq he-expand-list (sort
                              (all-completions he-search-string (mapcar 'list dcsh-command-list))
                              'string-lessp)))
      (while (and he-expand-list
              (he-string-member (car he-expand-list) he-tried-table))
        (setq he-expand-list (cdr he-expand-list)))
      (if (null he-expand-list)
          (progn
            (when old (he-reset-string))
            ())
        (he-substitute-string (car he-expand-list))
        (setq he-tried-table (cons (car he-expand-list) (cdr he-tried-table)))
        (setq he-expand-list (cdr he-expand-list))
        t))

   (global-set-key [(meta tab)] (make-hippie-expand-function
                               '(try-expand-dcsh-command
                                 try-expand-dabbrev-visible
                                 try-expand-dabbrev
                                 try-expand-dabbrev-all-buffers) t))

; org-reveal 
(require 'ox-reveal)
(setq org-reveal-root "file:///home/daniel/templates/reveal.js")

; Allow only parameter
;(add-to-list 'org-beamer-environments-extra 
;       '("only" "o" "\\only%a{%h%x" "}"))
;(add-to-list 'org-beamer-environments-extra 
;'("only" "o" "\\only%a{%h%x" "}"))

;(require 'ox-latex)
;(add-to-list 'org-latex-classes
;             '("beamer"
;               "\\documentclass\[presentation\]\{beamer\}"
;               ("\\section\{%s\}" . "\\section*\{%s\}")
;               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
;               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

(require 'ox-beamer)
(setq org-latex-listings t)
; Evitar crear alert, crea textbf
(defun my-beamer-bold (contents backend info)
  (when (eq backend 'beamer)
    (replace-regexp-in-string "\\`\\\\[A-Za-z0-9]+" "\\\\textbf" contents)))

(add-to-list 'org-export-filter-bold-functions 'my-beamer-bold)

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

; Save abbreviations
(setq save-abbrevs t)      


;; PDFs visited in Org-mode are opened in Evince (and not in the default choice)
(eval-after-load "org"
  '(progn
     ;; Change .pdf association directly within the alist
     (setcdr (assoc "\\.pdf\\'" org-file-apps) "evince %s")))

;(require 'calfw)

; Allow the accents
(require 'iso-transl)

; Aplicar diccionario
;; It works!  It works!  After two hours of slogging, it works!
(if (file-exists-p "/usr/bin/hunspell")
    (progn
      (setq ispell-program-name "hunspell")
      (eval-after-load "ispell"
        '(progn (defun ispell-get-coding-system () 'utf-8)))))
; Set auto-revert-mode in pdf 
(add-hook 'doc-view-mode-hook 'auto-revert-mode)


(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; CUA Mode C-v
   (cua-mode t)
    (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
    (transient-mark-mode 1) ;; No region when it is not highlighted
    (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

; Auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

; Python-mode
(setq py-install-directory "~/.emacs.d/python-mode.el-6.2.0")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)

; pymacs
(add-to-list 'load-path "~/.emacs.d/site-lisp/pymacs")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

; ropemacs
;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")
;(require 'tex-site)
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


; Update recentf to C-x C-r see the last opened files
(require 'recentf)

;; get rid of `find-file-read-only' and replace it with something
;; more useful.
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

;; enable recent files mode.
(recentf-mode t)

; 10 files ought to be enough.
(setq recentf-max-saved-items 10)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

 (add-hook 'dired-load-hook
	   (function (lambda () (load "dired-x"))))

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.


(add-to-list 'org-beamer-environments-extra
             '("only" "o" "\\only<2>{" "}"))

(autoload 'comint-dynamic-complete-filename "comint" nil t)
(global-set-key "\M-]" 'comint-dynamic-complete-filename)

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((python . t)
;;    (sh . t)
;;    (python . t)
;;    (R . t)
;;    ))

; Put reftex to integrate C-c [ for references
(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name) (file-exists-p (buffer-file-name))
       (progn
	 ;enable auto-revert-mode to update reftex when bibtex file changes on disk
	 (global-auto-revert-mode t)
	 (reftex-parse-all)
	 ;add a custom reftex cite format to insert links
	 ;; (reftex-setecite-format
	 ;;  '((?b . "[[bib:%l][%l-bib]]")
	 ;;    (?n . "[[notes:%l][%l-notes]]")
	 ;;    (?p . "[[papers:%l][%l-paper]]")
	 ;;    (?t . "%t")
	 ;;    (?h . "** %t\n:PROPERTIES:\n:Custom_ID: %l\n:END:\n[[papers:%l][%l-paper]]")))))
	 ))
  (define-key org-mode-map (kbd "C-c )") 'reftex-citation)
  (define-key org-mode-map (kbd "C-c (") 'org-mode-reftex-search))

(add-hook 'org-mode-hook 'org-mode-reftex-setup)

;(defun org-mode-reftex-search ()
;  ;;jump to the notes for the paper pointed to at from reftex search
;  (interactive)
;  (org-open-link-from-string (format "[[notes:%s]]" (first (reftex-citation t)))))

; flyspell
; (add-hook 'LaTeX-mode-hook 'turn-on-flyspell)

;; if (aspell installed) { use aspell}
;; else if (hunspell installed) { use hunspell }
;; whatever spell checker I use, I always use English dictionary
;; I prefer use aspell because:
;; 1. aspell is older
;; 2. looks Kevin Atkinson still get some road map for aspell:
;; @see http://lists.gnu.org/archive/html/aspell-announce/2011-09/msg00000.html
(defun flyspell-detect-ispell-args (&optional RUN-TOGETHER)
  "if RUN-TOGETHER is true, spell check the CamelCase words"
  (let (args)
    (cond
     ((string-match  "aspell$" ispell-program-name)
      ;; force the English dictionary, support Camel Case spelling check (tested with aspell 0.6)
      (setq args (list "--sug-mode=ultra" "--lang=en_US"))
      (if RUN-TOGETHER
          (setq args (append args '("--run-together" "--run-together-limit=5" "--run-together-min=2")))))
     ((string-match "hunspell$" ispell-program-name)
      (setq args nil)))
    args
    ))

(cond
 ((executable-find "aspell")
  (setq ispell-program-name "aspell"))
 ((executable-find "hunspell")
  (setq ispell-program-name "hunspell")
  ;; just reset dictionary to the safe one "en_US" for hunspell.
  ;; if we need use different dictionary, we specify it in command line arguments
  (setq ispell-local-dictionary "en_US")
  (setq ispell-local-dictionary-alist
        '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8))))
 (t (setq ispell-program-name nil)))

;; ispell-cmd-args is useless, it's the list of *extra* arguments we will append to the ispell process when "ispell-word" is called.
;; ispell-extra-args is the command arguments which will *always* be used when start ispell process
(setq ispell-extra-args (flyspell-detect-ispell-args t))
;; (setq ispell-cmd-args (flyspell-detect-ispell-args))
(defadvice ispell-word (around my-ispell-word activate)
  (let ((old-ispell-extra-args ispell-extra-args))
    (ispell-kill-ispell t)
    (setq ispell-extra-args (flyspell-detect-ispell-args))
    ad-do-it
    (setq ispell-extra-args old-ispell-extra-args)
    (ispell-kill-ispell t)
    ))


; Auto-complete
(require 'auto-complete-config)
(global-auto-complete-mode t)
(set-default 'ac-sources
             '(ac-source-imenu
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer))


(when (load "hippie-exp" t)
    (global-unset-key "\M-/")
    (global-set-key (kbd "C-SPC") 'hippie-expand))

(global-set-key (kbd "<f5>") 'reftex-citation)
(global-set-key (kbd "<f6>") 'set-mark-command)
; Inicio servidor
(server-start)
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

; Auto fill mode
(global-set-key (kbd "C-c q") 'auto-fill-mode)

; Clock in org-mode between sessions
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

; Activate colors in Control Version Diff
(defadvice vc-diff-finish (after handle-color-in-diff-output)
  "Run `ansi-color-apply-on-region'." 
  (progn
    (require 'ansi-color)
    (toggle-read-only)
    (ansi-color-apply-on-region (point-min) (point-max))
    (toggle-read-only)))

; M-up and M-down move paragraphs
(defun org-transpose-paragraphs (arg)
 (interactive)
 (when (and (not (or (org-at-table-p) (org-on-heading-p) (org-at-item-p)))
            (thing-at-point 'sentence))
   (transpose-paragraphs arg)
   (backward-paragraph)
   (re-search-forward "[[:graph:]]")
   (goto-char (match-beginning 0))
   t))

(add-to-list 'org-metaup-hook
 (lambda () (interactive) (org-transpose-paragraphs -1)))
(add-to-list 'org-metadown-hook
 (lambda () (interactive) (org-transpose-paragraphs 1))) 

; Move to next superior
(defun org-move-subtree-to-next-superior()
  "Moving subtree to next superior."
  (interactive) 
  (org-promote-subtree)
  (org-move-subtree-down)
  (org-demote-subtree))
(global-set-key (kbd "C-c C-x t") 'org-move-subtree-to-next-superior)

; Permito mover el nivel sin usar las flechas
(global-set-key (kbd "C-c x") 'org-do-promote)
(global-set-key (kbd "C-c v") 'org-do-demote)


;(require 'org-gcal)
;(setq org-gcal-client-id "980686816323-481aaof44uim7mabfs35l3glq3j8a5uv.apps.googleusercontent.com"
;      org-gcal-client-secret "8zldCu9CKqEbhkufO1jA5bh2"
;      org-gcal-file-alist '(("danimolina@gmail.com" .  "~/schedule.org")))


; Load fly
(when (load "flymake" t) 
         (defun flymake-pyflakes-init () 
           (let* ((temp-file (flymake-init-create-temp-buffer-copy 
                              'flymake-create-temp-inplace)) 
              (local-file (file-relative-name 
                           temp-file 
                           (file-name-directory buffer-file-name)))) 
             (list "pyflakes" (list local-file)))) 

         (add-to-list 'flymake-allowed-file-name-masks 
                  '("\\.py\\'" flymake-pyflakes-init))) 

(add-hook 'find-file-hook 'flymake-find-file-hook)
; No herencia de agenda
(setq org-agenda-use-tag-inheritance nil)
; Script for archive all done
(defun org-archive-done-tasks ()
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'tree))

(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

; Seguimos los pasos indicados en http://tuhdo.github.io/c-ide.html
; Cambiar entre .cc y .h
(add-hook 'c-mode-common-hook
  (lambda() 
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

; Setup-helm					; Help
(require 'helm-config)
(require 'helm-grep)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(define-key helm-grep-mode-map (kbd "<return>")  'helm-grep-mode-jump-other-window)
(define-key helm-grep-mode-map (kbd "n")  'helm-grep-mode-jump-other-window-forward)
(define-key helm-grep-mode-map (kbd "p")  'helm-grep-mode-jump-other-window-backward)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq
 helm-scroll-amount 4 ; scroll 4 lines other window using M-<next>/M-<prior>
 helm-ff-search-library-in-sexp t ; search for library in `require' and `declare-function' sexp.
 helm-split-window-in-side-p t ;; open helm buffer inside current window, not occupy whole other window
 helm-candidate-number-limit 500 ; limit the number of displayed canidates
 helm-ff-file-name-history-use-recentf t
 helm-move-to-line-cycle-in-source t ; move to end or beginning of source when reaching top or bottom of source.
 helm-buffers-fuzzy-matching t          ; fuzzy matching buffer names when non-nil
                                        ; useful in helm-mini that lists buffers

 )

(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c h o") 'helm-occur)

(global-set-key (kbd "C-c h C-c w") 'helm-wikipedia-suggest)

(global-set-key (kbd "C-c h x") 'helm-register)
;; (global-set-key (kbd "C-x r j") 'jump-to-register)

(define-key 'help-command (kbd "C-f") 'helm-apropos)
(define-key 'help-command (kbd "r") 'helm-info-emacs)
(define-key 'help-command (kbd "C-l") 'helm-locate-library)

;; use helm to list eshell history
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))

;;; Save current position to mark ring
(add-hook 'helm-goto-line-before-hook 'helm-save-current-pos-to-mark-ring)

;; show minibuffer history with Helm
(define-key minibuffer-local-map (kbd "M-p") 'helm-minibuffer-history)
(define-key minibuffer-local-map (kbd "M-n") 'helm-minibuffer-history)

(define-key global-map [remap find-tag] 'helm-etags-select)

(define-key global-map [remap list-buffers] 'helm-buffers-list)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: helm-swoop                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Locate the helm-swoop folder to your path
(require 'helm-swoop)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "C-c h o") 'helm-swoop)
(global-set-key (kbd "C-c s") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)

;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)

;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows t)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color t)

(helm-mode 1)

(provide 'setup-helm)


(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
; Uso ibuffer por defecto
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; auto-complete
(require 'auto-complete)
(require 'auto-complete-c-headers)
(require 'auto-complete-config)
(ac-config-default)

					; Yasnippet
;; (require 'yasnippet)
;; ;; Added complete in headers in C/C++
;; (defun my:ac-c-headers-init()
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers))
;; (add-hook 'c++-mode-hook 'my:ac-c-headers-init)
;; (add-hook 'c-mode-hook 'my:ac-c-headers-init)
;; (defalias 'yas/get-snippet-tables 'yas--get-snippet-tables)
;; (defalias 'yas/table-hash 'yas--table-hash)

;;; RefTeX
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(put 'narrow-to-region 'disabled nil)

(global-set-key (kbd "C-i") buffer-file-name)

(defun copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))

(global-set-key "\C-c\C-i" 'copy-file-name-to-clipboard)

(require 'ls-lisp)
(setq ls-lisp-use-insert-directory-program nil)

(setq dired-dwim-target t)


; Python mode
(setq
 python-shell-interpreter "/usr/local/bin/ipython3")
(when (load "flymake" t)
      (defun flymake-pylint-init ()
        (let* ((temp-file (flymake-init-create-temp-buffer-copy
                           'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
          (list "epylint" (list local-file))))
(add-to-list 'flymake-allowed-file-name-masks
	     '("\\.py\\'" flymake-pylint-init)))

;; Standard package.el + MELPA setup
;; (See also: https://github.com/milkypostman/melpa#usage)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


;; Standard Jedi.el setting
;(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)

;; Type:
;;     M-x package-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.

(package-initialize)
(elpy-enable)
;(elpy-use-ipython)
;(add-to-list 'ac-sources 'ac-source-jedi-direct)
;(elpy-clean-modeline)

; Projectile (for github project)
;lprojectile-global-mode)
;(setq projectile-enable-caching t)

(global-set-key [f12] 'recompile)

(set-cursor-color "LawnGreen")
; Set the utf-8 coding
(prefer-coding-system 'utf-8)

; Plantuml
;; Enable puml-mode for PlantUML files
(add-to-list 'auto-mode-alist
             '("\\.puml\\'" . puml-mode)
             '("\\.plantuml\\'" . puml-mode))

;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

(setq org-plantuml-jar-path
      (expand-file-name "~/plantuml.jar"))

(setq org-confirm-babel-evaluate nil)


; Para archivar fácilmente
(defun org-archive-done-tasks ()
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'tree));

					; Modo predictivo
(add-to-list 'load-path "/home/daniel/.emacs.d/predictive")
  (add-to-list 'load-path "/home/daniel/.emacs.d/predictive/misc")
  (add-to-list 'load-path "/home/daniel/.emacs.d/predictive/latex")
  (add-to-list 'load-path "/home/daniel/.emacs.d/predictive/texinfo")
  (add-to-list 'load-path "/home/daniel/.emacs.d/predictive/html")
(require 'predictive)


(autoload 'predictive-mode "predictive" "predictive" t)
(set-default 'predictive-auto-add-to-dict t)
(setq 
      predictive-auto-learn t
      predictive-add-to-dict-ask nil
      predictive-use-auto-learn-cache nil
      predictive-which-dict t)
(setq auto-completion-syntax-alist (quote (global accept . word))) ;; Use space and punctuation to accept the current the most likely completion.
(setq auto-completion-min-chars (quote (global . 2))) ;; Avoid completion for short trivial words.

(org-agenda-to-appt)
(setq appt-message-warning-time 30)
(defadvice org-agenda-to-appt (before wickedcool activate)
  "Clear the appt-time-msg-list."
  (setq appt-time-msg-list nil))

(global-set-key (kbd "C-x g") 'magit-status)
(eval-after-load "eww"
  '(progn (define-key eww-mode-map "f" 'eww-lnum-follow)
          (define-key eww-mode-map "F" 'eww-lnum-universal)))

; Zeal interface
(global-set-key "\C-c d" 'zeal-at-point)

;(setq max-specpdl-size 3000)  ; default is 1000, reduce the backtrace level

;;(add-to-list 'load-path "~/.emacs.d/melpa/ecb-20140215.114")

;;; activate ecb
;(require 'ecb)
;(require 'ecb-autoloads)

(setq max-specpdl-size 32000)
(setq max-lisp-eval-depth 32000)

; Smart tabs for c and java
(smart-tabs-insinuate 'c 'javascript 'java)
(add-hook 'c-mode-common-hook
	  (lambda () (setq indent-tabs-mode t)))


(add-to-list 'load-path "~/.emacs.d/monky")
(require 'monky)

;; By default monky spawns a seperate hg process for every command.
;; This will be slow if the repo contains lot of changes.
;; if `monky-process-type' is set to cmdserver then monky will spawn a single
;; cmdserver and communicate over pipe.
;; Available only on mercurial versions 1.9 or higher

(setq monky-process-type 'cmdserver)

; Evita conflicto entre yas y smart-tab al programar
;; http://emacsblog.org/2007/03/12/tab-completion-everywhere/ <-- in the comments
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
the minibuffer. Else, if mark is active, indents region. Else if
point is at the end of a symbol, expands it. Else indents the
current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
	(dabbrev-expand nil))
    (if mark-active
	(indent-region (region-beginning)
		       (region-end))
      (if (looking-at "\\_>")
	  (unless (yas/expand)
	    (dabbrev-expand nil))
	(indent-for-tab-command)))))


(defun prog-tabs ()
   (global-set-key [(tab)] 'smart-tab)     
)

(global-set-key (kbd "<f10>") 'org-clock-goto)

(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

(global-set-key [f11] 'toggle-fullscreen)


(require 'use-package)
(use-package expand-region
	     :init
	     (global-set-key (kbd "C-=") 'er/expand-region)
	;     :bind ("C-=" 'er/expand-region)
)

(use-package change-inner
  :bind (
	 ("M-i" . change-inner)
	 ("M-o" . change-outer))
  )


(use-package elfeed
  :init
      (setq elfeed-feeds
      '("http://nullprogram.com/feed/"
        "http://www.terminally-incoherent.com/blog/feed/"
	"http://meneame.feedsportal.com/rss"
	"meneame.net/rss2.php"
	;"https://www.linux.com/news/rss-feeds"
	"https://www.linux.com/news/software/developer?format=feed&type=rss"
        "https://www.reddit.com/r/programming/.rss"
	)))

(use-package w3m
  :config
  ;;change default browser for 'browse-url'  to w3m
  ;(setq browse-url-browser-function 'w3m-goto-url-new-session)
  ;;change w3m user-agent to android
  (setq w3m-user-agent "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; HTC_Pyramid Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.")

;; make browse-url-url-at-point use w3m links if they exist
  (defadvice browse-url-url-at-point (after w3m-anchor-at-point activate)
	"Browse the url at point. If w3m-anchor finds a url, use it."
	(setq ad-return-value 
				(or
				 (w3m-anchor)
				 (ad-return-value))))
  )


(use-package auctex-latexmk
  :init
  (auctex-latexmk-setup)
  )


(pdf-tools-install)
(eval-after-load 'org '(require 'org-pdfview))
(add-to-list 'org-file-apps '("\\.pdf\\'" . org-pdfview-open))
(add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" . org-pdfview-open))

; Flyspell
(global-set-key (kbd "<f8>") 'flyspell-buffer)
(global-set-key (kbd "C-<f8>") 'flyspell-check-previous-highlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word)
  )
(global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)