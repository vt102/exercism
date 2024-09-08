;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun acronym (s)
  "Convert a phrase to its acronym."
  (let ((s (split-string (upcase (replace-regexp-in-string "'+" "" s)) "\\W" t)))
    (apply 'concat (mapcar (lambda (word) (substring word 0 1)) s))))

(provide 'acronym)

;;; acronym.el ends here
