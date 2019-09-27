#|
11. Crie uma função com assinatura primeiros, a qual recebe um número de elementos, uma lista, e retorna
uma lista. Esta função deve retornar uma lista com os n primeiros elementos informados no primeiro
parâmetro. Não utilize nenhuma função pronta to LISP para esta tarefa.
|#

(defun primeiros (n lista)
	(
		if (null lista)
		()
		(
			if (= n 0)
				()
				(cons (car lista) (primeiros (- n 1) (cdr lista)))
		)
	)
)

(defun main ()	
	(write-line (write-to-string (primeiros 3 '(1 2 3 4 5))))	
)

(main)