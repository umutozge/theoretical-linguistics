
(defun printv (list)
  (dolist (item list)
    (format t "~A~%" item)))

(defun random-pick (list)
  (elt list (random (length list))))

(defun ensure-list (item)
  (if (not (listp item))
    (list item)
    item))

(defun repeat (n expr)
  (dotimes (x n)
    (eval expr)))
