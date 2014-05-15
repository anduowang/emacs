;*************** css ***************
(autoload 'css-mode "css-mode")
(setq auto-mode-alist       
     (cons '("\\.css\\'" . css-mode) auto-mode-alist))


;******************** ido.el*********************
   (require 'ido)
   (ido-mode t)

;*******************  EMACS bs.el ************************************
(global-set-key "\C-x\C-b" 'bs-show)    ;; or another key
(global-set-key "\M-P"  'bs-cycle-previous)
(global-set-key "\M-N"  'bs-cycle-next)

;****************************** COLOR THEME *************************
(require 'color-theme)
;(color-theme-subtle-hacker)
;(color-theme-gray30)
;(color-theme-gray1)
;(color-theme-snow)
;(color-theme-infodoc)


;***************************** SPEED BAR ***************************
(global-set-key (kbd "C-c s") 'speedbar-get-focus)



;*****************************DESKTOP and SESSION *********************
;(require 'session)
;  (add-hook 'after-init-hook 'session-initialize)

;(load "desktop") 
;(desktop-load-default) 
;(desktop-read)



;**************************** DIRED (from info) *****************
(require 'dired-x)

     (add-hook 'dired-load-hook
               (lambda ()
                 (load "dired-x")
                 ;; Set dired-x global variables here.  For example:
                  (setq dired-guess-shell-gnutar "gtar")
		                   ;; Bind dired-x-find-file.
                 (setq dired-x-hands-off-my-keys nil)
                 ;; Make sure our binding preference is invoked.
                 (dired-x-bind-find-file)
                 ))

     (add-hook 'dired-mode-hook
               (lambda ()
               ;; Set dired-x buffer-local variables here.  For example:
                 (setq dired-omit-files-p t)
                ))

          ;;do not wish to see `dot' files (files starting with a `.')
          (setq dired-omit-files
              (concat dired-omit-files "\\|^\\..+$"))


(setq dired-recursive-copies 'top)  ;让dired可以递归的拷贝和删除目录
(setq dired-recursive-deletes 'top)






;****************************** BATTERY ********************************
;(require 'battery)
;(setq battery-mode-line-format "[%b%p%% %t]"
;      battery-mode-line-string
;      (battery-format battery-mode-line-format
;                      (funcall battery-status-function)))
;;------------------------------自动更新------------------------------
;(run-with-timer 0 battery-update-interval
;                'battery-update-handler)
;然后把 batter-mode-line-string 加到 `global-mode-line-string' 里就 okay
;啦，看起来是这个样子，"68% 2:11".
;(display-battery)



