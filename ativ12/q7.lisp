#|
7. Crie uma função com assinatura enesimo, a qual recebe uma lista de inteiros e um inteiro n e retorna o
n-ésimo elemento na lista. Não utilize nenhuma função pronta to LISP para esta tarefa.
|#

(defun enesimo (lista n)
	(
		if (= 0 n)
		(car lista)
		(enesimo (cdr lista) (- n 1))
	)
)

(defun main ()
	(write-line (write-to-string (enesimo '(1 2 3 4 5 6 7 8 9 20 1) 0)))
	(write-line (write-to-string (enesimo '(1 2 3 4 5 6 7 8 9 20 1) 1)))
	(write-line (write-to-string (enesimo '(1 2 3 4 5 6 7 8 9 20 1) 2)))
	(write-line (write-to-string (enesimo '(1 2 3 4 5 6 7 8 9 20 1) 10)))
	(write-line (write-to-string (enesimo '(1 2 3 4 5 6 7 8 9 20 1) 11)))
)

(main)