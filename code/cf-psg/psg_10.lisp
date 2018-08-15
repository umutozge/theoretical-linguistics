(declaim #+sbcl(sb-ext:muffle-conditions style-warning))

(defparameter *grammar*
  '((s  (np vp))
    (np  (d n) avon jenna blake |THE LIBERATOR|)
    (vp  (tv np) iv)
    (n  (adj n) bracelet gun)
    (adj blue bright)
    (d the a)
    (tv detests loves)
    (iv walks talks)))

(defun generate (category)
  "generates a random constituent tree rooted at category"
  (if (lex? category)
    category
    (cons category 
          (mapcar (lambda (x) (generate (if (atom x) x (car x))))
                  (random-expand category)))))

(defun lex? (category)
  "checks whether category is a lexical item"
  (not (or (listp category) (assoc category *grammar*))))

(defun random-expand (category)
  "randomly expands category"
  (let ((rhs (cdr (assoc category *grammar*))))
    (if (null rhs)
      (list category)
      (let ((pick (elt rhs (random (length rhs)))))
        (if (atom pick)
          (list pick)
           pick)))))

(defun fringe (constree)
  "extracts the fringe of constree"
  (cond ((lex? constree) (list constree))
        ((atom constree) nil)
        (t (append (fringe (car constree)) (fringe (cdr constree))))))
