
;;;$Id: code-utils.el 4047 2006-08-11 19:11:17Z tv.raman.tv $
(require 'cl)


(defun ems-util-convert-def-voice-font-call ()
  "Process def-voice-call at point and prepare for using
voice-setup-add-map"
  (interactive)
  (beginning-of-line)
  (let ((form (read (current-buffer))))
    (backward-sexp 1)
    (kill-sexp)
    (insert
     (format "(%s %s)\n"
             (eval (fourth form))
             (third form)))
    (lisp-indent-line)))
    
