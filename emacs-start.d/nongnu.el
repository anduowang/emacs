;******************** WordNet ********************
(load "/home/anduo/Pond/sword/emacs-el-files/xwl-wordnet.el")
(require 'xwl-wordnet)
(global-set-key (kbd "M-s") 'wordnet-search)


;************************** MUTT mode **************************
(load "/home/anduo/Pond/sword/emacs-el-files/mutt.el")
(require 'mutt)


;*************************** TITLE TIME *************************
(load "/home/anduo/Pond/sword/emacs-el-files/title-time.el")
(require 'title-time)

(setq display-time-day-and-date t)
(setq display-time-interval 30)
 (setq display-time-24hr-format nil)
 (setq display-time-string-forms
       (quote
        ((if (and (not display-time-format)
		 display-time-day-and-date)
	    (format-time-string "%a %b %e   " now) "  ")
	(format-time-string
	 (or display-time-format
	     (if display-time-24hr-format "%H:%M" "%-I:%M%p")) now)
	"    Load" load "    " (if mail " Mail" "")))
       )




;***************************** TABLE **************************8
(load "/home/anduo/Pond/sword/emacs-el-files/table.el")
(require 'table)
(autoload 'table-insert "table" "WYGIWYS table editor")



;******************** tabbar.el *********************
(load "/home/anduo/Pond/sword/emacs-el-files/tabbar.el")
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "<f10>") 'tabbar-mode)

;(global-set-key (kbd "<C-f2>") 'bm-toggle)
;(global-set-key (kbd "C-c [") 'tabbar-backward-group)
;(global-set-key (kbd "<M-f1>") 'tabbar-backward-group)
(global-set-key (kbd "<f11>") 'tabbar-backward)

;(global-set-key (kbd "C-c ]") 'tabbar-forward-group)
;(global-set-key (kbd "<M-f2>") 'tabbar-forward-group)
(global-set-key (kbd "<f12>") 'tabbar-forward)

;(global-set-key (kbd "M-[") 'tabbar-backward)
(global-set-key (kbd "<M-f11>") 'tabbar-backward-group)

;(global-set-key (kbd "M-]") 'tabbar-forward)
(global-set-key (kbd "<M-f12>") 'tabbar-forward-group)




;****************************** sql auto completion **********
;; (load "/home/anduo/Pond/sword/emacs-el-files/pg.el")
;; (require 'pg)

;; (add-to-list 'load-path "/home/anduo/Pond/sword/emacs-el-files/")
;; (require 'cl-lib)

;; (load "/home/anduo/Pond/sword/emacs-el-files/sql.el")

;; (load "/home/anduo/Pond/sword/emacs-el-files/sql-completion.el")

;; (require 'sql)

;; (defun sql-remove-continuing-prompts (output)
;;   (concat "\n" (replace-regexp-in-string (concat sql-database "[^=()]# ") "" output)))

;; (defun sqli-add-hooks ()
;;   (add-hook 'comint-preoutput-filter-functions 'sql-remove-continuing-prompts))

;; (add-hook 'sql-interactive-mode-hook 'sqli-add-hooks)

;; (defun my-sql-save-history-hook ()
;;     (let ((lval 'sql-input-ring-file-name)
;;           (rval 'sql-product))
;;       (if (symbol-value rval)
;;           (let ((filename
;;                  (concat "~/.emacs.d/sql/"
;;                          (symbol-name (symbol-value rval))
;;                          "-history.sql")))
;;             (set (make-local-variable lval) filename))
;;         (error
;;          (format "SQL history will not be saved because %s is nil"
;;                  (symbol-name rval))))))
;; (add-hook 'sql-interactive-mode-hook 'my-sql-save-history-hook)

;; (defcustom sql-postgres-data-dictionary
;;   (concat
;;    "SELECT '(\"' || c.relname || '\" \"' || a.attname ||'\")' "
;;    "FROM pg_class AS c "
;;    "LEFT JOIN pg_attribute AS a ON c.oid = a.attrelid "
;;    "WHERE c.relkind='r' "
;;    "ORDER BY c.relname; ")
;;   "SQL Statement to determine all tables and columns."
;;   :group 'SQL
;;   :type 'string)

;; (defun save-sql-data-dictionary ()
;;   (let ((file "~/.emacs.d/sql/sql-data-dictionary"))
;;     (with-temp-buffer
;;       (pp sql-data-dictionary (current-buffer))
;;       (write-region (point-min) (point-max) file))))

;; (defun load-sql-postgres-data-dictionary ()
;;   "Read the contents of a file and return as a string."
;;   (let ((file "~/.emacs.d/sql/sql-data-dictionary"))
;;     (if (file-exists-p file)
;;         (setq sql-data-dictionary
;;               (with-temp-buffer
;;                 (insert-file-contents file)
;;                 (read (current-buffer)))))))

;; (defun generate-sql-postgres-data-dictionary ()
;;   (interactive)
;;   (setq sql-data-dictionary
;;         (sql-data-dictionary sql-postgres-data-dictionary))
;;   (save-sql-data-dictionary))

;; (load-sql-postgres-data-dictionary)

;; (define-key sql-interactive-mode-map (kbd "TAB") 'sql-complete)

;; (define-abbrev-table 'sql-mode-abbrev-table ())
;; (add-hook 'sql-interactive-mode-hook
;;           (lambda ()
;;             (abbrev-mode 1)
;;             (setq local-abbrev-table sql-mode-abbrev-table)))



;*********************** bm.el *************************
;******************* http://www.nongnu.org/bm/ **********
(load "/home/anduo/Pond/sword/emacs-el-files/bm-1.32.el")
(require 'bm) 

(autoload 'bm-toggle   "bm" "Toggle bookmark in current buffer." t)
(autoload 'bm-next     "bm" "Goto bookmark."                     t)
(autoload 'bm-previous "bm" "Goto previous bookmark."            t)

(global-set-key (kbd "<C-f2>") 'bm-toggle)
;(global-set-key (kbd "<f26>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)
;(global-set-key (kbd "<f14>") 'bm-previous)
(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(bm-persistent-face (quote bold-italic))
 '(case-fold-search t)
 '(current-language-environment "Chinese-GB")
 '(default-input-method "chinese-py-punct")
 '(global-font-lock-mode t nil (font-lock))
 '(jde-mode-abbreviations (append (quote (("as" . "assert") ("nen" . "!= null;") ("et" . "\\elemtype") ("ev" . "\\everything") ("exi" . "\\exists") ("fo" . "\\fields_of") ("fa" . "\\forall") ("fr" . "\\fresh") ("invf" . "\\invariant_for") ("ii" . "\\is_initialized") ("lbln" . "\\lblneg") ("lblp" . "\\lblpos") ("ls" . "\\lockset") ("max" . "\\max") ("min" . "\\min") ("nne" . "\\nonnullelements") ("no" . "\\nothing") ("nm" . "\\not_modified") ("ns" . "\\not_specified") ("numo" . "\\num_of") ("old" . "\\old") ("oth" . "\\other") ("prod" . "\\product") ("rea" . "\\reach") ("res" . "\\result") ("sut" . "\\such_that") ("sum" . "\\sum") ("ty" . "\\type") ("to" . "\\typeof") ("TY" . "\\TYPE") ("abb" . "abrupt_behavior") ("accr" . "accessible_redundantly") ("acc" . "accessible") ("al" . "also") ("ar" . "assert_redundantly") ("assir" . "assignable_redundantly") ("assi" . "assignable") ("assr" . "assume_redundantly") ("ass" . "assume") ("ax" . "axiom") ("be" . "behavior") ("brr" . "breaks_redundantly") ("brks" . "breaks") ("cr" . "callable_redundantly") ("cal" . "callable") ("ci" . "choose_if") ("dr" . "decreases_redundantly") ("dcs" . "decreases") ("dcr" . "decreasing_redundantly") ("dc" . "decreasing") ("depr" . "depends_redundantly") ("dep" . "depends") ("divr" . "diverges_redundantly") ("div" . "diverges") ("durr" . "duration_redundantly") ("dur" . "duration") ("enr" . "ensures_redundantly") ("en" . "ensures") ("exam" . "example") ("eb" . "exceptional_behavior") ("ee" . "exceptional_example") ("exsr" . "exsures_redundantly") ("exs" . "exsures") ("forall" . "forall") ("fe" . "for_example") ("gh" . "ghost") ("implt" . "implies_that") ("help" . "helper") ("hbr" . "hence_by_redundantly") ("hb" . "hence_by") ("init" . "initializer") ("ini" . "initially") ("ins" . "instance") ("invr" . "invariant_redundantly") ("inv" . "invariant") ("lir" . "loop_invariant_redundantly") ("li" . "loop_invariant") ("mair" . "maintaining_redundantly") ("mai" . "maintaining") ("mbr" . "measured_by_redundantly") ("mb" . "measured_by") ("mp" . "model_program") ("model" . "model") ("modir" . "modifiable_redundantly") ("modi" . "modifiable") ("modr" . "modifies_redundantly") ("mod" . "modifies") ("mb" . "monitored_by") ("mo" . "monitored") ("nn" . "non_null") ("nb" . "normal_behavior") ("ne" . "normal_example") ("nw" . "nowarn") ("old" . "old") ("or" . "or") ("post" . "post") ("pre" . "pre") ("pure" . "pure") ("ri" . "readable_if") ("ref" . "refine") ("repr" . "represents_redundantly") ("rep" . "represents") ("reqr" . "requires_redundantly") ("req" . "requires") ("rr" . "returns_redundantly") ("rets" . "returns") ("set" . "set") ("sigr" . "signals_redundantly") ("sig" . "signals") ("spr" . "spec_protected") ("spu" . "spec_public") ("stati" . "static_initializer") ("subc" . "subclassing_contract") ("uninit" . "uninitialized") ("unr" . "unreachable") ("weak" . "weakly") ("whr" . "when_redundantly") ("wh" . "when") ("wsr" . "working_space_redundantly") ("ws" . "working_space") ("==>" . "==>") ("<==" . "<==") ("<==>" . "<==>") ("<!>" . "<=!=>") ("->" . "->") ("->" . "<-") (".." . "..") ("{|" . "{|") ("|}" . "|{") ("infdesc" . "(* informal description *)") ("depe" . "depends store-ref-expression <- store-ref-list ;") ("ense" . "ensures Q;") ("exe" . "(\\exists Type t; G(t); P(t));") ("fae" . "(\\forall Type t; G(t); P(t));") ("mode" . "modifies \\everything;") ("modn" . "modifies \\nothing;") ("repe" . "represents store-ref-expression <- spec-expression ;") ("repst" . "represents store-ref-expression \\such_that spec-expression ;") ("reqe" . "requires P;") ("sige" . "signals (Expression e) R;") ("exse" . "exsures (Expression e) R;") ("oe" . "\\old()") ("sume" . "(\\sum Type t, G(t); P(t));") ("prode" . "(\\product Type t, G(t); P(t));") ("maxe" . "(\\max Type t, G(t); P(t));") ("minee" . "(\\min Type t, G(t); P(t));") ("numoe" . "(\\num_of Type t, G(t); P(t));") ("hspec" . "    //@ behavior
   //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   ensures Q;
    //@   signals (Exception) R;") ("lspec" . "    //@ requires P;
    //@ assignable X;
    //@ ensures Q;
    //@ signals (Exception) R;") ("pubnhspec" . "    //@ public normal_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   ensures Q;") ("pronhspec" . "    //@ protected normal_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   ensures Q;") ("prinhspec" . "    //@ private normal_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   ensures Q;") ("nhspec" . "    //@ normal_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   ensures Q;") ("pubehspec" . "    //@ public exceptional_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   signals (Exception) R;") ("proehspec" . "    //@ protected exceptional_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   signals (Exception) R;") ("priehspec" . "    //@ private exceptional_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   signals (Exception) R;") ("ehspec" . "    //@ exceptional_behavior
    //@   requires P;
    //@   diverges \\not_specified;
    //@   assignable X;
    //@   when \\not_specified;
    //@   signals (Exception) R;"))) jde-mode-abbreviations))
 '(show-paren-mode t nil (paren))
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(bm-face ((t (:background "cyan" :foreground "white"))))
 '(bold-italic ((t (:background "cyan" :foreground "white" :slant italic :weight bold)))))

;; make bookmarks persistent as default
(setq-default bm-buffer-persistence t)
;; Loading the repository from file when on start up.
(add-hook' after-init-hook 'bm-repository-load)

;; Restoring bookmarks when on file find.
(add-hook 'find-file-hooks 'bm-buffer-restore)

;; Saving bookmark data on killing a buffer
(add-hook 'kill-buffer-hook 'bm-buffer-save)

   ;; Saving the repository to file when on exit.
   ;; kill-buffer-hook is not called when emacs is killed, so we
   ;; must save all bookmarks first.
   (add-hook 'kill-emacs-hook '(lambda nil
 	  		             (bm-buffer-save-all)
			             (bm-repository-save)))

   ;; Update bookmark repository when saving the file.
   (add-hook 'after-save-hook 'bm-buffer-save)

   ;; Restore bookmarks when buffer is reverted.
(add-hook 'after-revert-hook 'bm-buffer-restore)

;; Restoring bookmarks when on file find.
(add-hook 'find-file-hooks 'bm-buffer-restore)
;; make sure bookmarks is saved before check-in (and revert-buffer)
(add-hook 'vc-before-checkin-hook 'bm-buffer-save)

   ;; make sure bookmarks is saved before check-in (and revert-buffer)
   (add-hook 'vc-before-checkin-hook 'bm-buffer-save)

