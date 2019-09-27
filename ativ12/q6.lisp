#|
6. Crie uma função com assinatura ocorrencias, a qual recebe uma lista de inteiros e um inteiro e retorna o
número de vezes em que o elemento está presente na lista. Não utilize nenhuma função pronta to LISP
para esta tarefa.
|#

(defun ocorrencias (lista x)
	(if (null lista)
		0
		(if (= x (car lista))
			(+ 1 (ocorrencias (cdr lista) x))
			(ocorrencias (cdr lista) x)
		)
	)
)

(defun main ()
	(write-line (write-to-string (ocorrencias '(1 2 3 4 5 6 7 8 9 10 1 1 1) 1)))
)

(main)