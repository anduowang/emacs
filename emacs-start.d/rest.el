;================================================================
;================================= Emacs Wiki ==================
;================================================================
(load "emacs-wiki")

(setq emacs-wiki-projects
      `(("MyPanther" .
         ((emacs-wiki-directories . ("~/EmacsWiki/wiki/panther"))
          (emacs-wiki-project-server-prefix . "../wiki/")
          (emacs-wiki-publishing-directory
           . "~/EmacsWiki/personal-site/site/wiki")))
        ("ArrowAt" .
         ((emacs-wiki-directories . ("~/EmacsWiki/wiki/arrow"))
          (emacs-wiki-project-server-prefix . "../arrow/")
          (emacs-wiki-publishing-directory
           . "~/EmacsWiki/personal-site/site/arrow")))))

;(setq emacs-wiki-charset-default "gb2312")
;(setq emacs-wiki-coding-default 'gb2312)
;(setq emacs-wiki-style-sheet "<link rel=\"stylesheet\" type=\"text/css\" href=\"f.css\">")

;(global-set-key (kbd "<f9> w") 'emacs-wiki-mode)


(require 'planner)
(setq planner-directory "~/EmacsWiki/wiki/Plans")

(setq planner-project "Plans")

     (setq muse-project-alist
           '(("Plans"
              ("~/EmacsWiki/wiki/Plans"           ;; where your Planner pages are located
               :default "TaskPool" ;; use value of `planner-default-page'
               :major-mode planner-mode
               :visit-link planner-visit-link)

              ;; This next part is for specifying where Planner pages
              ;; should be published and what Muse publishing style to
              ;; use.  In this example, we will use the XHTML publishing
              ;; style.

              (:base "html"
                     ;; where files are published to
                     ;; (the value of `planner-publishing-directory', if
                     ;;  you have a configuration for an older version
                     ;;  of Planner)
                     :path "~/EmacsWiki/personal-site/site/Plans"))))


;; Move unfinished tasks to today's page
(setq planner-carry-tasks-forward t)
;; Scan three pages in the past
(plan)

(global-set-key (kbd "<f9> p") 'plan)
(global-set-key (kbd "<f9> t") 'planner-create-task-from-buffer)

(global-set-key (kbd "<f9> r") 'remember)
(require 'remember-planner)
(setq remember-handler-functions '(remember-planner-append))
(setq remember-annotation-functions planner-annotation-functions)



;********************** EMACS PVS *****************************
;(load "/home/dog/pvs/emacs")
