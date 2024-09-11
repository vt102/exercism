;;; difference-of-squares.el --- Difference of Squares (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun sum-of-squares (n)
  (/ (* n (+ n 1) (+ (* n 2) 1)) 6)
)

(defun square-of-sum (n)
  (let* ((last-even (* (/ n 2) 2))
         (sum-even (* (+ last-even 1) (/ last-even 2))))
    (if (equal (% n 2) 0)
        (expt sum-even 2)
      (expt (+ sum-even n) 2))))

(defun difference (n)
 (- (square-of-sum n) (sum-of-squares n))
)

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
