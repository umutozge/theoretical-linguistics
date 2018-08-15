(declaim #+sbcl(sb-ext:muffle-conditions style-warning))
(load "00_utils.lisp")

(defparameter *rules*
  '(
    (((cat s)  (comp nil)) (((cat np)  (comp nil)) ((cat vp) (comp nil)) ) )
    (((cat np) (comp nil)) (((cat d)   (comp nil)) ((cat n) (comp nil))  ) )
    (((cat vp) (comp nil)) (((cat v) (comp np)) ((cat np) (comp nil)))
                           (((cat v) (comp pp)) ((cat pp) (comp nil)))
                           (((cat v) (comp nil))))
    (((cat n)  (comp nil)) (((cat adj) (comp nil)) ((cat n) (comp nil)) ) )
    (((cat pp) (comp nil)) (((cat p) (comp nil)) ((cat np) (comp nil)) ) )
    ))

(defparameter *lexicon*
  '((((cat n) (comp nil)) bracelet gun)
      (((cat d) (comp nil)) the a)
      (((cat v) (comp nil)) walks talks)
      (((cat v) (comp np)) detests loves)
      (((cat v) (comp pp)) relies)
      (((cat p) (comp nil)) on)
      (((cat adj) (comp nil)) blue bright)
      (((cat np) (comp nil)) avon jenna blake |THE LIBERATOR|)))

(defun generate (category)
  "generates a random constituent tree rooted at category"
  (if (not (listp category))
    category
    (cons category 
          (mapcar #'generate 
                  (random-expand category)))))

(defun fetch-rewrites (category)
  "collects all the possible rewrites of category"
  (let ((descriptions (append *rules* *lexicon*))
        (store nil))
    (dolist (desc descriptions)
      (if (unify category (car desc))
        (push desc store)))
    (reduce #'append store :key #'cdr)))

(defun unify (left right)
  (equal left right))

(defun random-expand (category)
  "randomly expands category"
  (if (not (listp category))
    category
    (let ((rewrites (fetch-rewrites category)))
      (if (null rewrites)
        (error "No such category.")
        (ensure-list (random-pick rewrites))))))


(defun fringe (constree)
  "extracts the fringe of constree"
  (cond ((atom constree) nil)
        ((and (eql (length constree) 2)  (listp (car constree)) (atom (cadr constree))) (cdr constree))
        (t (append (fringe (car constree)) (fringe (cdr constree))))))

