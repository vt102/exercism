;;; dnd-character.el --- D&amp;D Character (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun modifier (score)
  (unless (and (<= score 18)
               (>= score 3))
    (error "Score out of accepted range"))
  (floor (/ (- score 10) 2.0)))

(defun ability ()
  (let ((rolls ()))
    (while (< (length rolls) 4)
      (setq rolls (append rolls (list (+ (random 6) 1)))))
    (apply '+ (cdr (sort rolls '<)))))

(defun generate-dnd-character ()
  (let ((char-sheet []))
    ;(setq char-sheet (append char-sheet '("Name")))
    (while (< (length char-sheet) 6)
      (setq char-sheet (append char-sheet (list (ability)))))
    (setq char-sheet (append char-sheet (list (+ 10
                                                 (modifier (nth 3 char-sheet))))))
    (apply 'record (append (list 'dnd-character) char-sheet nil))))

(provide 'dnd-character)
;;; dnd-character.el ends here
