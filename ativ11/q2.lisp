(defun abs(x)
	(cond
		(< x 0) (- 0 x)
		(t) (x)	
	)
)


(defun main()
	(write-line "digite o x")
	(setq x (read))	
	(write-line (write-to-string (abs x)))
)

(main)