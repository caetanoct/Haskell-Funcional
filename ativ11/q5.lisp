(defun media (n1 n2 n3)
	(/ (+ n1 n2 n3) 3)
)


(defun aprovado (n1 n2 n3)
	(
		cond
		((>= (media n1 n2 n3) 6) "aprovado")
		((t) "reprovado")
	)
)

(defun main()
	(setq x (read))	
	(setq y (read))	
	(setq z (read))	
	(write-line (write-to-string (aprovado x y z)))
)

(main)