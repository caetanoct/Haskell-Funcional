#|
14. Motifique o arquivo alunos.lisp (disponı́vel no Moodle) de forma a adicionar novas funções:
A: Crie uma função com o seguinte nome: medias, a qual recebe uma lista de alunos e retorna uma lista
de duplas, onde cada dupla contém o nome e a média de cada aluno. Note que cada aluno pode ter
um número diferente de notas.
B: Crie uma função com o seguinte nome: mediaTurma, a qual recebe uma lista de alunos e retorna a
média da turma.
C: Crie uma função com o seguinte nome: acimaMedia, a qual recebe uma lista de alunos e retorna os
nomes e médias dos alunos que estão acima da média da turma.
D: Crie uma função com o seguinte nome: aprovados, a qual recebe uma lista de alunos e retorna uma
lista com o nome dos alunos aprovados. Um aluno está aprovado se a sua média é maior ou igual a
6.
E: Crie uma função com o seguinte nome: duplas, a qual recebe uma lista de alunos e retorna uma lista
de duplas de alunos. Note que um aluno não pode fazer dupla consigo mesmo.
F: Crie uma função com o seguinte nome: ordernarAlunos, a qual recebe uma lista de alunos e retorna
os nomes e médias dos alunos ordenados em ordem crescente de média.
|#

(defun alunos()
    '((1 "Bob" (5.6 8 9.3))
      (2 "Ana" (8.2 9 7 6.5))
      (3 "Tom" (3.2 7 5.7 8.3))
      (4 "Bin" (7.5 5.3 8.5 6.2 3.1))
      (5 "Bia" (6.7 4.1 5.5)))
)

(defun soma (lista)
    (if (null lista)
        0
        (+ (car lista) (soma (cdr lista))))
)

(defun comprimento (lista)
	(if (null lista) ;testa se lista é vazia
		0
		(+ 1 (comprimento (cdr lista))) ;cdr retorna cauda
	)
)

(defun getMedia (aluno)
	(/ (soma (car (cdr (cdr aluno)))) (comprimento(car (cdr (cdr aluno)))))
)

(defun getNome (aluno)
    (car (cdr aluno))
)

(defun medias (lista)
	( 
		if (null lista)
			()
			(cons (cons (getNome (car lista)) (getMedia (car lista)) ) (medias (cdr lista)))
	)
)

(defun acimaMediaAux (lista media_Turma)
	(
		if (null lista)
		()
		(
			if (> (getMedia (car lista)) media_Turma)
			(cons (cons (getNome (car lista)) (getMedia (car lista))) (acimaMediaAux (cdr lista) media_Turma))			
		)
	)
)

(defun acimaMedia (lista)
	(
		acimaMediaAux lista (mediaTurma lista)
	)
)

(defun aprovados (lista)
	(
		if (null lista)
		()
		(
			if (> (getMedia (car lista)) 6)
			(cons (cons (getNome (car lista)) (getMedia (car lista))) (aprovados (cdr lista)))			
		)
	)
)
(defun mediaTurma (lista)
	(
		if (null lista)
		0
		(/ (getSomaMedias lista) (comprimento lista))
	)
)

(defun getSomaMedias (lista)
	(
		if (null lista)
		0
		(+ (getMedia (car lista)) (getSomaMedias (cdr lista)))
	)
)
(defun getNomes (lista)
    (if (null lista)
        ()
        (cons (getNome (car lista)) (getNomes (cdr lista)))
    )
)

(defun main ()
    (write-line (write-to-string (medias (alunos))))
    (write-line (write-to-string (mediaTurma (alunos))))
    (write-line (write-to-string (acimaMedia (alunos))))
    (write-line (write-to-string (aprovados (alunos))))
)

(main)