

(defun main()
	(write-line "digite o x")
	(setq x (read))
	(write-line "digite o y")
	(setq y (read))
	(write-line (write-to-string (expt x y)))
)

(main)