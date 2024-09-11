;;; collatz-conjecture.el --- Collatz Conjecture (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun steps (number)
  "Count the steps to reach 1 using the Collatz conjecture."
  (if (<= number 0)
      (error "Number must be >= 1")
    (let ((count 0))
      (while (not (equal number 1))
        (if (equal (% number 2) 0)
            (setq number (/ number 2))
          (setq number (+ (* number 3) 1)))
        (setq count (+ count 1)))
      count)))

(provide 'collatz-conjecture)
;;; collatz-conjecture.el ends here
