(defun myxor (a b)
	(or (and a (not b)) (and b (not a)))
)

(defun main()
	(setq x (read))	
	(setq y (read))	
	(write-line (write-to-string (myxor x y)))
)

(main)