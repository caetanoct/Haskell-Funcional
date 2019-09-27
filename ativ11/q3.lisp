(defun area(base altura)
	(/ (* base altura) 2)
)

(defun main()
	(write-line "digite a base")
	(setq x (read))	
	(write-line "digite a altura")
	(setq y (read))	
	(write-line (write-to-string (area x y)))
)

(main)