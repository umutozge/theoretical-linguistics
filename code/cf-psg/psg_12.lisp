(declaim #+sbcl(sb-ext:muffle-conditions style-warning))

(defparameter *rules*
  '((s  (np vp))
    (np  (d n))
	(vp  (tv np) iv)
	(n  (adj n))))

(defparameter *lexicon*
  '((np avon jenna blake |THE LIBERATOR|)
	(n bracelet gun)
	(adj blue bright)
	(d the a)
	(tv detests loves)
	(iv walks talks)))
