;;; darts.el --- Darts (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun dist-from-center (x y)
  "How far is (x, y) from (0.0, 0.0)?"
  (sqrt (+ (expt x 2) (expt y 2))))

(defun score (x y)
  (let ((distance (dist-from-center x y)))
    (cond
     ((> distance 10.0) 0)
     ((> distance 5.0) 1)
     ((> distance 1.0) 5)
     (t 10))))

(dist-from-center -5 0)

(provide 'darts)
;;; darts.el ends here
