#|
8. Crie uma função com assinatura fatia, a qual recebe uma lista de inteiros, um inteiro n e um inteiro m
e retorna todos os elementos da lista a partir da posição n (inclusive) até a posição m (exceto o elemento
da posição m). Não utilize nenhuma função pronta to LISP para esta tarefa.
|#
(defun fatiaAux (lista n m n_original)
	(		
		if (= n 0)
		(
			if (= (abs(- m n_original)) 0)
			NIL
			(cons (car lista) (fatiaAux (cdr lista) n (- m 1) n_original))
		)
		(fatiaAux (cdr lista) (- n 1) m n_original)
	)
)

(defun fatia (lista n m)
	(fatiaAux lista n m n)
)

(defun main ()
	(write-line (write-to-string (fatia '(1 2 3 4 5) 0 4)))	
)

(main)