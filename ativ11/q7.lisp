#|
7. Crie uma função que compute o n-ésimo número de Fibonacci. Leia n do teclado.
|#

(defun fib (n)
	(
		if (<= n 2)
		1
		(+ (fib (- n 1)) (fib (- n 2)))
	)
)

(defun main()
	(setq x (read))	
	(write-line (write-to-string (fib x)))
)

(main)