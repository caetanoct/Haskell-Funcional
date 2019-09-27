#|
9. Crie uma função com assinatura inverte, a qual recebe uma lista como parâmetro e deve retornar a
mesma invertida. Não utilize nenhuma função pronta do LISP para realizar esta tarefa.
|#

(defun enesimo (lista n)
	(
		if (= 0 n)
		(car lista)
		(enesimo (cdr lista) (- n 1))
	)
)

(defun comprimento (lista)
	(if (null lista) ;testa se lista é vazia
		0
		(+ 1 (comprimento (cdr lista))) ;cdr retorna cauda
	)
)

(defun inverteAux (lista comprimento_variavel)
	(
		if (= comprimento_variavel 0)
		()
		(cons (enesimo lista (- comprimento_variavel 1)) (inverteAux lista (- comprimento_variavel 1)))
	)
)

(defun inverte (lista)
	(inverteAux lista (comprimento lista))
)


(defun main ()	
	(write-line (write-to-string (inverte '(1 2 3 4 5))))	
)

(main)