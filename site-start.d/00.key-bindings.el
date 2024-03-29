;; -*- Emacs-Lisp -*-

;; goto line 
(global-set-key "\M-g" 'goto-line)
;; get me speedbar
(global-set-key [(f4)] 'speedbar-get-focus)

;; toggle fullscreen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			     (progn (setq old-fullscreen current-value)
				    'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)
(add-hook 'after-make-frame-functions 'toggle-fullscreen)

