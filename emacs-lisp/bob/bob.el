;;; bob.el --- Bob (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun response-for (phrase)
  "Documentation string"
  (let* ((case-fold-search nil)
         (phrase (replace-regexp-in-string "[[:blank:]\n\r]*" "" phrase))
         (question-flag (string-match  "\?$" phrase))
         (caps-flag (and (string-match "[A-Z]" phrase)
                         (string-match "^[^a-z]*$" phrase)))
         (ws-flag (string-match "^$" phrase)))
    (cond
     ((and question-flag caps-flag) "Calm down, I know what I'm doing!")
     (question-flag "Sure.")
     (caps-flag "Whoa, chill out!")
     (ws-flag "Fine. Be that way!")
     (t "Whatever."))))

(provide 'bob)
;;; bob.el ends here
