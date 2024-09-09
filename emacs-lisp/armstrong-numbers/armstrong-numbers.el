;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
  (let* ((numlist (split-string (number-to-string n) "" t))
         (count (length numlist))
         (sum (apply '+ (mapcar (lambda (i) (expt (string-to-number i) count)) numlist))))
    (equal sum n)))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
