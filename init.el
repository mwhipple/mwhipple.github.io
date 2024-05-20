;;; init.el -- Configure emacs to my liking. -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Matt Whipple <mattwhipple@acm.org>

;; Author: Matt Whipple <mattwhipple@acm.org>
;; Maintainer: Matt Whiple <mattwhipple@acm.org>
;; Keywords: config
;; Package: ^-config
;; Package-Version: NA
;; Package-Requires: ((emacs "29.1") (dash "2.19.1")
;; Filename: init.el

;; This file is not part of GNU Emacs.

;; This is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This software is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this file.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file will collect my configuration and documentation of emacs behavior,
;; along with being the initial location of any extensions on which I work.

;;; Code:

(unless (fboundp #'json-parse-buffer)
  (warn "Emacs does not have JSON support!"))

(setq inhibit-startup-screen t)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

(desktop-save-mode)

(display-battery-mode)
(display-time-mode)
(setq display-time-day-and-date t)

(tool-bar-mode -1)
(menu-bar-mode -1)

(define-minor-mode dark-mode
  "Use light text on dark background."  
  :global t
  :group 'faces
  (when (eq dark-mode
	    (eq 'light (frame--current-background-mode (selected-frame))))
    ;; FIXME: Change the face's SPEC instead?
    (set-face-attribute 'default nil
			:foreground (face-attribute 'default :background)
			:background (face-attribute 'default :foreground))
   (frame-set-background-mode (selected-frame))))
(dark-mode)

(setq self-insert-keys
      '(
	"a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m"			   
	"A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M"
	"n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
=======
>>>>>>> 3d25263 (Merge)
	"N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
	"0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "." "-" "$"
	"SPC" "=" "_" "*" "\"" "'" "`" "+" "~" "?"
	"!" "@" "#" "%" "^" "&" "|" "," ";" ":"
	"(" ")" "{" "}" "[" "]" "<" ">" "/" "\\"
	))
(dolist (k self-insert-keys)
  (apply #'keymap-set (list global-map k #'self-insert-command)))

(bind-keys :map global-map
	   ("C-g" . keyboard-quit)
	   ("M-x" . execute-extended-command)
<<<<<<< HEAD
	   ("M-:" . eval-expression)
	   ("C-x C-c" . save-buffers-kill-terminal)
	   ("C-z" . suspend-frame))
(setq read-extended-command-predicate nil)

(bind-keys :map global-map
	   ("C-q" . quoted-insert)
	   ("C-x 8 <RET>" . insert-char)
=======
	   ("M-:" . eval-expression))

(bind-keys :map global-map
>>>>>>> 3d25263 (Merge)
	   ("RET" . newline)
	   ("C-j" . electric-newline-and-maybe-indent)
	   ("TAB" . indent-for-tab-command)
	   ("C-o" . open-line))

<<<<<<< HEAD
(setq read-quoted-char-radix 16)

=======
>>>>>>> 3d25263 (Merge)
(bind-keys :map global-map
	   ("DEL"  . backward-delete-char-untabify)
	   ("M-DEL" . backward-kill-word)
	   ;; Chrome OS support
	   ("<deletechar>" . backward-kill-word)
	   ("C-d" .  delete-char)
<<<<<<< HEAD
	   ("C-w" . kill-region)
	   ("M-d" . kill-word)
	   ("C-k" . kill-line)
	   ("M-\\" . delete-horizontal-space)
	   ("C-x C-o" . delete-blank-lines)
=======
	   ("M-d" . kill-word)
	   ("C-k" . kill-line)
	   ("M-\\" . delete-horizontal-space)
>>>>>>> 3d25263 (Merge)
	   ("M-z" . zap-up-to-char))

(bind-keys :map global-map
	   ("C-f" . forward-char)
<<<<<<< HEAD
	   ("<RIGHT>" . right-char)
	   ("C-b" . backward-char)
	   ("<LEFT>" . left-char)
	   ("C-n" . next-line)
	   ("<DOWN>" . next-line)
	   ("C-p" . previous-line)
	   ("<UP>" . previous-line)
	   ("C-a" . move-beginning-of-line)
	   ("<Home>" . move-beginning-of-line)
	   ("C-e" . move-end-of-line)
	   ("<End>" . move-end-of-line)
	   ("M-f" . forward-word)
	   ("M-<RIGHT>" . right-word)
	   ("M-b" . backward-word)
	   ("M-<LEFT>" . left-word)
	   ("M-r" . move-to-window-line-top-bottom)
=======
	   ("C-b" . backward-char)
	   ("C-n" . next-line)
	   ("C-p" . previous-line)
	   ("C-e" . move-end-of-line)
	   ("C-a" . move-beginning-of-line)
	   ("M-f" . forward-word)
	   ("M-b" . backward-word)
>>>>>>> 3d25263 (Merge)
	   ("M-n" . forward-list)
	   ("M-p" . backward-list)
	   ("M->" . end-of-buffer)
	   ("M-<" . beginning-of-buffer)
	   ("M-}" . forward-paragraph)
	   ("M-{" . backward-paragraph)
	   ("C-v" . scroll-up-command)
<<<<<<< HEAD
	   ("<PageDown>" . scroll-up-command)
	   ("M-v" . scroll-down-command)
	   ("<PageUp>" . scroll-down-command)
	   ("M-g c" . goto-char)
	   ("M-g TAB" . move-to-column)
	   ("M-g g" . goto-line)
	   ("C-x C-n" . set-goal-column))

(bind-keys :map global-map
	   ("M-=" . count-words-region)
	   ("C-x = " . what-cursor-position))
(setq what-cursor-show-names t)
=======
	   ("M-v" . scroll-down-command))
>>>>>>> 3d25263 (Merge)

(bind-keys :map global-map
	   ("C-l" . recenter-top-bottom))

(bind-keys :map global-map
	   ("C-SPC" . set-mark-command)
<<<<<<< HEAD
	   ("C-@" . set-mark-command)
	   ("M-@" . mark-word)
	   ("M-h" . mark-paragraph)
	   ("C-M-h" . mark-defun)
	   ("C-M-@" . mark-sexp)
	   ("C-x C-p" . mark-page)
	   ("C-x h" . mark-whole-buffer)
	   ("C-x C-x" . exchange-point-and-mark))

(setq highlight-nonselected-windows nil)

(bind-keys :map global-map
	   ("C-/" . undo)
	   ("C-_" . undo)
	   ("C-y" . yank)
	   ("M-y" . yank-pop)
	   ("M-w" . kill-ring-save))

(bind-keys :map global-map
	   ("M-u" . upcase-word)
=======
	   ("C-x h" . mark-whole-buffer))

(bind-keys :map global-map
	   ("C-y" . yank)
	   ("M-w" . kill-ring-save))

(bind-keys :map global-map
>>>>>>> 3d25263 (Merge)
	   ("M-;" . comment-dwim))

(bind-keys :map global-map
	   ("M-/" . dabbrev-expand)
	   ("M-SPC" . complete-symbol))

(bind-keys :map global-map
	   ("C-s" . isearch-forward)
	   ("C-r" . isearch-backward)
	   ("M-%" . query-replace)
	   ("M-." . xref-find-definitions))
<<<<<<< HEAD
(setq isearch-resume-in-command-history t)

(bind-keys :map global-map
	   ("C-x z" . repeat)
	   ("C-x <ESC> <ESC>" . repeat-complex-command))
=======
>>>>>>> 3d25263 (Merge)

(bind-keys :map global-map
	   ("M-!" . shell-command))

(bind-keys :prefix "C-x C-z"
	   :prefix-map dispatch-map
	   ("a" . org-agenda)
	   ("g" . gnus)
	   ("m" . gnus-summary-mail-other-window)
	   ("s" . shell)
<<<<<<< HEAD
	   ("v" . view-mode)
=======
>>>>>>> 3d25263 (Merge)
	   ("w" . eww))

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(bind-keys* ("C-M-n" . next-buffer)
	    ("C-M-<right>" . next-buffer)
	    ("C-M-p" . previous-buffer)
	    ("C-M-<left>" . previous-buffer)
	    ("C-M-b" . switch-to-buffer)
	    ("C-M-k" . kill-buffer)
	    ("C-M-l" . list-buffers)
	    ("C-M-s" . save-buffer)
	    ("C-M-0" . delete-window)
	    ("C-M-1" . delete-other-windows)
	    ("C-M-2" . split-window-below)
	    ("C-M-3" . split-window-right)
	    ("C-M-o" . other-window)
	    ("C-M-}" . enlarge-window-horizontally)
	    ("C-M-{" . shrink-window-horizontally)
	    ("C-M-]" . enlarge-window)
	    ("C-M-[" . shrink-window))

(bind-keys :prefix "C-h"
	   :prefix-map help-map
	   :prefix-docstring "Help me!"
<<<<<<< HEAD
	   ("a" . apropos-command)
	   ("b" . describe-bindings)
	   ("c" . describe-key-briefly)
	   ("C" . describe-coding-system)
	   ("d" . apropos-documentation)
	   ("e" . view-echo-area-messages)
	   ("f" . describe-function)
	   ("F" . Info-goto-emacs-command-node)
	   ("g" . describe-gnu-project)
	   ("h" . help-for-help)
	   ("H" . view-hello-file)
	   ("i" . info)
	   ("I" . describe-input-method)
	   ("k" . describe-key)
	   ("K" . Info-goto-emacs-key-ommand-node)
	   ("l" . view-lossage)
	   ("L" . describe-language-environment)
	   ("m" . describe-mode)
	   ("n" . view-emacs-news)
	   ("o" . describe-symbol)
	   ("p" . finder-by-keyword)
	   ("P" . describe-package)
	   ("r" . info-emacs-manual)
	   ("s" . describe-syntax)
	   ("S" . Info-lookup-symbol)
	   ("t" . help-with-tutorial)
	   ("v" . describe-variable)
	   ("w" . where-is)
	   ("x" . describe-command)
	   ("." . display-local-help)
	   ("C-c" . describe-copying)
	   ("C-d" . view-emacs-debugging)
	   ("C-e" . view-external-packages)
	   ("C-f" . view-emacs-FAQ)
	   ("C-m" . view-order-manuals)
	   ("C-n" . view-emacs-news)
	   ("C-o" . describe-distribution)
	   ("C-p" . view-emacs-problems)
	   ("C-t" . view-emacs-todo)
	   ("C-w" . describe-no-warranty))

(bind-keys :map help-mode-map
	   ("<RET>" . help-follow)
	   ("TAB" . forward-button)
	   ("S-TAB" . backward-button)
	   ("C-c C-c" . help-follow-symbol)
	   ("C-c C-f" . help-go-forward)
	   ("C-c C-b" . help-go-back)
	   ("s" . help-view-source)
	   ("r" . help-goto-info)
	   ("c" . help-customize))
=======
	   ("b" . describe-bindings)
	   ("f" . describe-function)
	   ("i" . info)
	   ("k" . describe-key)
	   ("l" . view-lossage)
	   ("m" . describe-mode)
	   ("w" . where-is))
>>>>>>> 3d25263 (Merge)

(bind-keys :prefix "C-x C-r"
	   :prefix-map bookmark-map
	   ("m" . bookmark-set))
(setq bookmark-save-flag 1)

(bind-keys :map minibuffer-mode-map
	   ("TAB" . minibuffer-complete)
<<<<<<< HEAD
	   ("<SPC>" . minibuffer-complete-word)
	   ("<RET>" . minibuffer-complete-and-exit)
	   ("?" . minibuffer-completion-help)
	   ("M-v" . switch-to-completions)
	   ("M-n" . next-history-element)
	   ("M-p" . previous-history-element)
	   ("<UP>" . previous-line-or-history-element)
	   ("<DOWN>" . next-line-or-history-element)
	   ("M-r" . previous-matching-history-element)
	   ("M-s" . next-matching-history-element))
(minibuffer-electric-default-mode)
(setq history-delete-duplicates t)
(setq resize-mini-windows t)

(bind-keys :map completion-list-mode-map
	   ("<RET>" . choose-completion)
	   ("mouse-1" . choose-completion)
	   ("TAB" . next-completion)
	   ("S-TAB" . previous-completion)
	   ("q" . quit-window)
	   ("z" . kill-current-buffer))

(bind-keys :map global-map
	   ("C-x C-f" . find-file)
	   ("C-x `" . next-error))

(setq-default require-final-newline t)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

 (use-package org
   :bind
   (:prefix "C-x C-o"
    :prefix-map global-org-map
    :prefix-docstring "Globally used org mode keys"
    ("a" . org-agenda)
    ("c" . org-capture)
    ("C-<SPC>" . org-store-link))

   (:map org-mode-map
   ("DEL" . org-delete-backward-char)
   ("TAB" . org-cycle)
   ("C-M-_"    . org-cycle)
=======
	   ("RET" . exit-minibuffer)
	   ("M-n" . next-history-element)
	   ("M-p" . previous-history-element))

(bind-keys :map global-map
	   ("C-x C-f" . ffap)
	   ("C-x `" . next-error))

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

 (use-package org
   :bind (:map org-mode-map
   ("DEL" . org-delete-backward-char)
   ("TAB" . org-cycle)
>>>>>>> 3d25263 (Merge)
   ("M-RET" . org-meta-return)
   ("M-<right>" . org-metaright)
   ("M-<left>" . org-metaleft)
   ("M-<down>" . org-metadown)
<<<<<<< HEAD
   ; Chromebook
   ("<next>" . org-metadown)
   ("M-<up>" . org-metaup)
   ; Chromebook
   ("<prior>"   . org-metaup)
   ("C-a" . org-beginning-of-line)
   ("C-k" . org-kill-line)
   ("C-c d" . org-deadline)
   ("C-c k" . outline-show-branches)
   ("C-c q" . org-set-tags-command)
   ("C-c r" . org-reveal)
   ("C-c s" . org-schedule)
   ("C-c t" . org-todo)
   ("C-c w" . org-refile)
   ("C-x RET" . org-open-at-point))
   :custom
   (org-cycle-global-at-bob t))
=======
   ;; Chrombook
   ("<next>" . org-metadown)
   ("M-<up>" . org-metaup)
   ("C-a" . org-beginning-of-line)
   ("C-k" . org-kill-line)
   ("C-c C-w" . org-refile)
   ("C-c C-q" . org-set-tags-command)
   ("C-c C-t" . org-todo)
   ("C-x RET" . org-open-at-point)
   ("C-M-_" . org-cycle)))
>>>>>>> 3d25263 (Merge)

(use-package dired
  :bind (:map dired-mode-map
  ("C-p" . dired-previous-line)
  ("C-n" . dired-next-line)
  ("RET" . dired-find-file)))

(use-package org-agenda
  :bind (:map org-agenda-mode-map
  ("C-n" . org-agenda-next-line)
  ("C-p" . org-agenda-previous-line)
  ("TAB" . org-agenda-goto)
  ("g" . org-agenda-redo-all)
  ("t" . org-agenda-todo)
  ("u" . org-agenda-bulk-unmark)
  ("T" . org-agenda-show-tags))
  :config
  (setq org-agenda-span 'day)
  ;; Allow for very old scheduled items for catch-up behavior.
  (setq org-scheduled-past-days 99999)
  ;; Use hl-line mode in org-agenda for visibilitiy
  (add-hook 'org-agenda-mode-hook 'hl-line-mode))

(use-package hexl
  :bind (:map hexl-mode-map
  ("C-v" . hexl-scroll-up)
  ("M-v" . hexl-scroll-down)))

(use-package info
  :bind (:map Info-mode-map
  ("SPC" . Info-scroll-up)))

(add-to-list 'auto-mode-alist '("\\.el\\'" . emacs-lisp-mode))
(global-dash-fontify-mode)
(with-eval-after-load 'info-look
  (dash-register-info-lookup))
(bind-keys :map global-map
	   ("C-x C-e" . eval-last-sexp))

(defgroup ^-env
  nil
  "Tune the environment."
  :prefix "^-env"
  :group 'environment)

(defun ^-shell-expand (name)
  (let ((shell-variable (^-enveloper '("${" . "}"))))
    (^-shell-printf "%s" (funcall shell-variable name))))

(defun ^-enveloper (pair)
  "Produce a function which will wrap a string within pair."
  (lambda (s) (concat (car pair) s (cdr pair))))

(defcustom ^-env-shell-supplier
  (lambda () shell-file-name)
  "Define the function which will return the shell to invoke
   along with any additional arguments."
  :type 'function
  :group '^-env)

(defcustom ^-env-shell-login-arg-supplier
  (lambda () '("-l" "-i"))
  "Define the function which will return arguments that when
   passed to the shell will operate in login mode."
  :type 'function
  :group '^-env)

(defcustom ^-env-printf-supplier
  (lambda () "printf")
  "Define the function which will return the printf command
   to be invoked by the shell."
  :type 'function
  :group '^-env)

(defcustom ^-env-warn-evaluation-duration-millis-supplier
  (lambda () 500)
  "Print a warning if evaluation duration exceeds this number of milliseconds."
  :type 'function
  :group '^-env)

(defun ^-temporal-diff-millis (start end)
  (thread-last start
	      (time-subtract end)
	      float-time
	      (* 1000.0)))

(defun ^-timed (handler)
  "Produce a function that will invoke thunks and return their value
   while also passing the execution duration to <handler>."
  (lambda (thunk)
    (let* ((start-time (current-time))
	   (result (funcall thunk))
	   (duration (^-temporal-diff-millis start-time (current-time))))
      (funcall handler duration)
      result)))

(defcustom ^-env-variable-transplants-supplier
  (lambda '("MANPATH"))
  "List of environment variables which will be transplanted on initialization."
  :group '^-env)

(define-derived-mode structurizr-mode fundamental-mode "Structurizr"
  "Major mode for editing Structurizr dsl"
  (set-syntax-table structurizr-mode-syntax-table)
  (make-local-variable 'structurizr-indent-offset)
  (set (make-local-variable 'indent-line-function) 'structurizr-indent-line)
  (setq font-lock-defaults (list (funcall structurizr-font-lock-default-collector))))

(defun ^-words-for-face (face words)
  "Return a pair of a regexp matching <words> and the provided <face>."
  (cons (regexp-opt words 'words) face))

(defun ^-list-collector ()
  "Produce a list collector."
  (let ((l nil))
    (lambda (&optional arg)
      (if arg (push arg l) l))))

(setq structurizr-font-lock-default-collector (^-list-collector))

(funcall structurizr-font-lock-default-collector
	 (^-words-for-face
	  'font-lock-keyword-face
	  '(
	    "enterprise"
	    "model"
	    "views"
	    "workspace"
	    )))

(funcall structurizr-font-lock-default-collector
	 (^-words-for-face
	  'font-lock-type-face
	  '(
	    "branding"
	    "component"
	    "container"
	    "containerInstance"
	    "deployment"
	    "deploymentEnvironment"
	    "deploymentGroup"
	    "deploymentNode"
	    "dynamic"
	    "element"
	    "filtered"
	    "group"
	    "infrastructureNode"
	    "person"
	    "perspectives"
	    "properties"
	    "relationship"
	    "softwareSystem"
	    "softwareSystemInstance"
	    "styles"
	    "systemContext"
	    "systemLandscape"
	    "themes"
	    )))

(funcall structurizr-font-lock-default-collector
	 (^-words-for-face
	  'font-lock-function-name-face
	  '("->")))

(funcall structurizr-font-lock-default-collector
	 (^-words-for-face
	  'font-lock-variable-name-face
	  '(
	    "autoLayout"
	    "background"
	    "border"
	    "color"
	    "colour"
	    "dashed"
	    "description"
	    "exclude"
	    "fontSize"
	    "height"
	    "icon"
	    "include"
	    "metadata"
	    "opacity"
	    "position"
	    "routing"
	    "shape"
	    "stroke"
	    "tags"
	    "technology"
	    "thickness"
	    "title"
	    "url"
	    "width")))

(defvar structurizr-indent-offset 4
  "Define the indentation offset for `structurizr-mode'.
Lines will be indented this offset multiplied by the detected level.
Currently only spaces are supported.")

(defun structurizr-indent-line ()
  "Indent current line as Structurizr dsl."
  (interactive)
  (let* ((initial-level (^-opener-count-to-top "{"))
	 (closers (^-closers-on-line "}"))
	 (level (max 0 (- initial-level closers))))
    (indent-line-to (* level structurizr-indent-offset))))

(defun ^-opener-count-to-top (opener)
  "Ascend through levels and count the number of <opener>s seen."
  (let ((level 0))
    (save-excursion
      (beginning-of-line)
      (condition-case nil
	  (while t
	    (backward-up-list 1)
	    (when (looking-at opener)
	      (setq level (+ level 1))))
	(error nil)))
    level))

(defun ^-closers-on-line (closer)
  (save-excursion
    (back-to-indentation)
    (if (looking-at closer) 1 0)))

(defun ^-syntax-table-punctuation (&rest flags)
  (apply #'concat (cons ". "
	  (mapcar (lambda (flag)
		    (cond
		     ((eq flag :start-2char-comment-open) "1")
		     ((eq flag :end-2char-comment-open) "2")
		     ((eq flag :start-2char-comment-close) "3")
		     ((eq flag :end-2char-comment-close) "4")
		     ((eq flag :for-comment-sequence-b) "b")
		    (t (error "Unrecognized flag" flag))))
		  flags))))
(defun ^-syntax-table-comment-ender () ">")

(setq structurizr-mode-syntax-table
  (let ((syntax-table (make-syntax-table)))
    (modify-syntax-entry
      ?/
      (^-syntax-table-punctuation
        :start-2char-comment-open
	:end-2char-comment-open
	:end-2char-comment-close)
      syntax-table)
    (modify-syntax-entry
      ?*
      (^-syntax-table-punctuation
        :end-2char-comment-open
	:start-2char-comment-close
	:for-comment-sequence-b))
    (modify-syntax-entry ?\n (^-syntax-table-comment-ender) syntax-table)
    syntax-table))

(add-to-list 'auto-mode-alist '("\\.dsl\\'" . structurizr-mode))

(add-hook 'prog-mode-hook #'hs-minor-mode)
(bind-keys :map prog-mode-map
	   ("C-M-_". hs-toggle-hiding))

(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))

(defvar LilyPond-mode-map ()
    "Keymap used in `LilyPond-mode' buffers.")

  (defun LilyPond-mode ()
    "Major mode for editing LilyPond music files.

This mode knows about LilyPond keywords and line comments, not abou
indentation or block comments.  It features easy compilation, error
finding and viewing of a LilyPond source buffer or region.

COMMANDS
\\{LilyPond-mode-map}
VARIABLES

LilyPond-command-alist\t\talist from name to command"
    (interactive)
    ;; set up local variables
    (kill-all-local-variables))

(add-to-list 'auto-mode-alist '("\\.ly$" . LilyPond-mode))
(add-to-list 'auto-mode-alist '("\\.ily$" . LilyPond-mode))

;; This should be cleaned up a bit but was just implemented in the most
;; obvious way for now.
(defun gnus-group-read-50 ()
  (interactive)
  (gnus-group-read-group 50))

(use-package gnus
  :bind (:map gnus-group-mode-map
	 ("M-g" . gnus-group-get-new-news-this-group)
	 ("M-<down>" . gnus-group-read-50)
<<<<<<< HEAD
	 :map gnus-summary-mode-map
	 ("M-<down>" . gnus-summary-next-page)
	 ("C-c m" . gnus-summary-move-article))
  :custom (setq gnus-select-method
		'(nnimap "imap.gmail.com")
		(nnimap-server-port "imaps")))
=======
         :map gnus-summary-mode-map
	 ("M-<down>" . gnus-summary-next-page)
	 ("C-c m" . gnus-summary-move-article)))
>>>>>>> 3d25263 (Merge)

(use-package eww
  :bind (:map eww-mode-map
	      ("C-c w" . eww-copy-page-url)))
(setq browse-url-browser-function 'eww-browse-url)
