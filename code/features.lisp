
;MERT KÜSKÜ


;IT GIVES THE PHONEMES FOR GIVEN SET OF MUTUAL FEATURES
;OR IT GIVES THE MUTUAL FEATURES FOR GIVEN SET OF PHONEMES.
;IT WORKS FOR THE TURKISH PHONEMES.



(defparameter *global-list* '(
	((p) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 0) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((b) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 0) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((t) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 1) (distr 0) (high 0) (lo 0) (back 0) (round 0))

	((d) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 1) (distr 1) (high 0) (lo 0) (back 0) (round 0))	

	((tʃ) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 1) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr 1) (high 0) (lo 0) (back 0) (round 0))

	((dʒ) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 1) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr 1) (high 0) (lo 0) (back 0) (round 0))

	((c) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 0) (distr ) (high 1) (lo 0) (back 0) (round 0))

	((j--) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 0) (distr ) (high 1) (lo 0) (back 0) (round 0))

	((k) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 0) (distr ) (high 1) (lo 0) (back 1) (round 0))

	((g) (syl 0) (son 0) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 0) (distr ) (high 1) (lo 0) (back 1) (round 0))

	((m) (syl 0) (son 1) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 1) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 0) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((n) (syl 0) (son 1) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 1) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 1) (distr 0) (high 0) (lo 0) (back 0) (round 0))

	((f) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 0) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((v) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 0) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((s) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 1) (distr 0) (high 0) (lo 0) (back 0) (round 0))

	((z) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 1) (cor 1) (distr 0) (high 0) (lo 0) (back 0) (round 0))

	((ʃ) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr 1) (high 0) (lo 0) (back 0) (round 0))

	((ʒ) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr 1) (high 0) (lo 0) (back 0) (round 0))

	((ɣ) (syl 0) (son 0) (cons 1) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 0) (distr ) (high 1) (lo 0) (back 1) (round 0))

	((h) (syl 0) (son 1) (cons 0) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 0) (c.g. 0) 
	(s.g. 1) (ant 0) (cor 0) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((j) (syl 0) (son 1) (cons 0) (cont 1) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 0) (distr ) (high 1) (lo 0) (back 0) (round 0))

	((r) (syl 0) (son 1) (cons 1) (cont 0) (del.rel 0) (lat 0) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr ) (high 0) (lo 0) (back 0) (round 0))

	((l--) (syl 0) (son 1) (cons 1) (cont 1) (del.rel 0) (lat 1) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr ?) (high 0) (lo 0) (back 0) (round 0))

	((l) (syl 0) (son 1) (cons 1) (cont 1) (del.rel 0) (lat 1) (nas 0) (voi 1) (c.g. 0) 
	(s.g. 0) (ant 0) (cor 1) (distr ?) (high 0) (lo 0) (back 1) (round 0))
	
	((i) (2132) (22) (23) (24) (25) (26) (27) (28) (29) (30) (31) (32) (33) (high 1) (low 0) (back 0) (round 0))

	((y) (3112) (32) (33) (34) (35) (36) (37) (38) (39) (4023) (41) (4452) (43) (high 1) (low 0) (back 0) (round 1))

	((e) (2199) (2232) (2233) (3324) (2235) (3326) (28787) (2008) (2912) (31230) (31231) (37672) (333) (high 0) (low 0) (back 0) (round 0))

	((œ) (2188) (2442) (2443) (2433) (24445) (2226) (2657) (298) (292) (3440) (318) (3265) (332) (high 0) (low 1) (back 0) (round 1))

	((ɯ) (2111) (2552) (2355) (2444) (2555) (2611) (2347) (2248) (293) (3550) (3156) (32545) (33123) (high 1) (low 0) (back 1) (round 0))

	((a) (2122) (2662) (2366) (2455) (2775) (2456) (2743) (2238) (294) (3660) (31324) (34342) (332313) (high 0) (low 1) (back 1) (round 0))

	((o) (2133) (2772) (2773) (2664) (2005) (2436) (2437) (2738) (295) (3770) (361) (3122) (337) (high 0) (low 0) (back 1) (round 1))

	((u) (2144) (2288) (2388) (2774) (25123) (2326) (2127) (268) (2955) (3880) (371) (3223) (3399) (high 1) (low 0) (back 1) (round 1))

))

(defun are-they-all-same (l)
	"are the all members of the list equal/same?" 
	(cond 
		((null (cdr l)) t)
		((equal (car l) (cadr l))  (are-they-all-same (cdr l)))
		(t nil)))

(defun harfleri-topla (l &optional store (temiz-liste *global-list*))
	"gives the lists of phonemes with their features."  
	(cond ((null l) store)
		( (equal (car l) (car (car (car temiz-liste))))	(harfleri-topla (cdr l) (cons (car temiz-liste) store) *global-list*))
		( t 		(harfleri-topla l store (cdr temiz-liste)))))

(defun pick-mutual-features (l &optional store flag depo)
	"gives the mutual features for given phonemes. " 
	(cond
		((null flag) (pick-mutual-features (harfleri-topla l) store t depo))
		(t (remove-nils (dotimes (i 18 (reverse depo))
				(dolist  (x l store)
					(push (nth i x) store))
				(if (are-they-all-same store)
					(push (car store) depo))
				(setf store nil))))))

(defun remove-nils (l &optional store)
	"removes nils in a given list"
	(cond
		((null l) (reverse store))
		((null (car l))	(remove-nils (cdr l) store))
		(t (remove-nils	(cdr l) (cons (car l) store)))))



(defun custom-member-for-lists (l big-l) 
	"because it gives nil for lists. ex: (member '(abc) '(1 (abc) 2)) --> nil"
	(cond
		((null big-l)  		nil)
		((equal l (car big-l)) t)
		(t (custom-member-for-lists l (cdr big-l)))))

(defun harfleri-ver (l &optional store (listee *global-list*)) 
	"gives the lists of features of phonemes for given features."
	(cond
		((null l) (reverse listee))
		((null listee) 			(harfleri-ver (cdr l) nil store))
		((custom-member-for-lists (car l) (car listee))		(harfleri-ver l (cons (car listee) store) (cdr listee)))
		(t 		(harfleri-ver l store (cdr listee)))))

(defun temiz-harfleri-ver (l &optional store)
	 "gives the phonemes for given features."
	(dolist (x (harfleri-ver l) (reverse store))
		(push (car (car x)) store)))


(print "For the best experience, use the terminal as wide as possible. Reload the file for each use")
(print "1 is +, 0 is -, empty space is empty space, ? is ?")
(print "0/1's are discarded because + simply means aspirated when they take +")
(print "Enter 1 to get mutual features for given phonemes OR Enter 2 to get phonemes for given features")


(print "*************************************")

(defvar x)


(let ((a (read)))
	(if (equal a 1) 
		(progn 
			(print "phonemes are in the same order as in the handout")
			(print "copying and pasting done with ctrl+shift+c or ctrl+shift+v in the terminal, otherwise you'll get an error")
			(print "Ʃ stands for 'ş' in Turkish and -- means symbol has a line at the middle")
			(print "pick phonemes from the list: (P B T D TƩ DƷ C J-- K G M N F V S Z Ʃ Ʒ Ɣ H J R L-- L I Y E Œ Ɯ A O U) and write as (p b t):")
			(print "*************************************")
			(setf x (read))
			(print (pick-mutual-features x)))	
		(progn
			(print "+ is 1, - is 0")
			(print "1 =/= 0 =/= ? =/= empty space")
			(print "pick some features and write as ((feature 1) (feature 0) (feature) (feature ?))")
			(print "*************************************")
			(setf x (read))
			(print (temiz-harfleri-ver x)))
		))
