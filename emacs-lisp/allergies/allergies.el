;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(setq allergies
      (list "eggs" "peanuts" "shellfish" "strawberries" "tomatoes"
            "chocolate" "pollen" "cats"))

(defun find-allergy-index (name)
  "Given the string name, search list allergies and return its index"
  (let (index)
    (dotimes (i 8)
      (if (equal (nth i allergies) name)
          (progn
            (setq index i)
            (setq i 999))))
    index))

(defun allergicp (score index)
  "Return t if index is represented in score; else nil"
  (if (not (equal (logand (expt 2 index) score) 0))
      t
    nil))

(defun allergen-list (score)
  "Return list of names of allergens represented by score.

List of allergens must be in increasing order by index"
  (let (allergens)
    (dotimes (i 8)
      (if (allergicp score i)
          (setq allergens (cons  (nth i allergies) allergens))))
    (nreverse allergens)))

(defun allergic-to-p (score allergen)
  "Return t if allergen name is represented in score; else nil"
  (let ((index (find-allergy-index allergen)))
    (allergicp score index)))

(provide 'allergies)

;;; allergies.el ends here
