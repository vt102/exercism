;;; binary-search.el --- Binary Search (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun find-binary (array value)
  (bin-search array value 0 (- (length array) 1)))

(defun bin-search (array value start-point end-point)
  "Return the index of value in array, or nil"
  (if (< (- end-point start-point) 0) ; end-point index before start-point
      nil
    (let* ((mid (+ start-point (floor (- end-point start-point) 2)))
           (choice (elt array mid)))
      (cond
       ((= choice value) mid)
       ((= (- end-point start-point) 0)
          nil)
       ((< choice value) (bin-search array value (+ mid 1) end-point))
       ((> choice value) (bin-search array value start-point (- mid 1)))))))

(provide 'binary-search)
;;; binary-search.el ends here
