;;; eliuds-eggs.el --- Eliud's Eggs (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun egg-count (number)
  (let ((count 0))
    (while (> number 0)
      (if (equal (% number 2) 1)
          (setq count (+ count 1)))
      (setq number (/ number 2)))
    count))

(provide 'eliuds-eggs)
;;; eliuds-eggs.el ends here
