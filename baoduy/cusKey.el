(require 'baoduy/cusFunc)
(ido-mode 1)
(setq ido-enable-flex-matching t ido-everywhere t
      ido-enable-flex-matching t ido-use-virtual-buffers t)

(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords
      '((sequence "TODO" "INPROGRESS" "DONE")))
(setq org-todo-keyword-faces
      '(("INPROGRESS" . (:foreground "blue" :weight bold))))
(setq org-agenda-files (list "~/Dropbox/org/personal.org"))

(global-set-key (kbd "C-x M-t") 'cleanup-region)
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; config for dired+
(setq show-paren-style 'expression)
(show-paren-mode t)

(global-set-key  [f1] (lambda () (interactive) (manual-entry (current-word))))
(global-set-key  [f2] (lambda ()  (interactive)(shell)))
;; (global-unset-key (kbd "<C-z>"))
;; (global-unset-key (kbd "<C-S-z>"))
(global-set-key "\C-z" 'undo)
(global-set-key (kbd "<M-escape>") 'kill-current)
(global-set-key [S-mouse-2] 'browse-url-at-mouse)
(global-set-key [C-tab] 'other-window)
 
(nav-disable-overeager-window-splitting)
;; Optional: set up a quick key to toggle nav
(global-set-key [f8] 'nav-toggle)

;; duplicate a line
(global-set-key (kbd "C-c d") 'djcb-duplicate-line)
;; duplicate a line and comment the first
(global-set-key (kbd "C-c C-d") (lambda()(interactive)(djcb-duplicate-line t)))

;; set keybinding
(global-set-key (kbd "C-c C-c") 'toggle-comment-line)

(global-set-key (kbd "M-n") 'move-line-down)
(global-set-key (kbd "<M-down>") 'move-line-down)

(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "M-p") 'move-line-up)


(provide 'baoduy/cusKey)
