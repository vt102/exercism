;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
  (let* ((numstr (number-to-string n))
        (numlist (split-string numstr "" t))
        (count (length numlist))
        (sum (apply '+ (mapcar (lambda (i) (expt (string-to-number i) count)) numlist))))
    (equal sum n)))

(armstrong-p 115132219018763992565095597973971522401)
(number-to-string 115132219018763992565095597973971522401)
(print (format "%d" 115132219018763992565095597973971522401))

(defun my-number-to-string (n)
  (let ((strlist ()))
    (while (not (equal n 0))
      (setq strlist (append strlist (list (% n 10))))
      (setq n (/ n 10)))
    (reverse strlist)))

(my-number-to-string 123)
(my-number-to-string 115132219018763992565095597973971522401)
(append nil (list 1))
(append '(1) (list 2))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
