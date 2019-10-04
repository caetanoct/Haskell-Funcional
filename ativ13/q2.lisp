#|
2. Motifique o arquivo arvore.lisp (disponı́vel no Moodle) de forma a adicionar novas operações a nossa
árvore. Assuma que nossa árvore não é uma árvore binária de busca.
A: Crie uma função com a seguinte assinatura: ocorrenciasElemento (arv x), a qual recebe um
número e deve retornar a quantidade de ocorrências dele na árvore.
B: Crie uma função com a seguinte assinatura: maioresQueElemento (arv x), a qual recebe um número
e deve retornar a quantidade de números maiores que ele na árvore.
C: Crie uma função com a seguinte assinatura: mediaElementos (arv), a qual deve retornar a média
dos números na árvore.
D: Crie uma função com a seguinte assinatura: quantidade (arv), a qual deve retornar a quantidade
de elementos na árvore.
E: Crie uma função com a seguinte assinatura: elementos (arv), a qual deve retornar uma lista com
todos os elementos na árvore.
F: Crie uma função com a seguinte assinatura: substituir (arv x y), a qual recebe dois números como
parâmetro e deve buscar e alterar todas as ocorrências de x pelo valor y.
G: Crie uma função com a seguinte assinatura: posordem (arv), a qual deve retornar a lista de números
visitados em percorrimento pós-ordem.
H: Crie uma função com a seguinte assinatura: preordem (arv), a qual deve retornar a lista de números
visitados em percorrimento pré-ordem.
I: Crie uma função com a seguinte assinatura: emordem (arv), a qual deve retornar a lista de números
visitados em percorrimento em-ordem.
J: Crie uma função com a seguinte assinatura: subtraiParesImpares (arv), a qual deve retornar a
soma de todos os números pares - (menos) a soma de todos os números ı́mpares.
K: Crie uma função com a seguinte assinatura: novoNo (x), a qual recebe um número como parâmetro
e deve retornar uma nova árvore com apenas o nó contendo o valor x.
L: Crie uma função com a seguinte assinatura: inserir (arv x), a qual recebe um número como
parâmetro deve inserı́-lo na árvore respeitando as seguintes condições:
• Tente adicioná-lo primeiramente em um nó interno com ou a árvore direita ou a árvore esquerda
nula (mas não ambas nulas).
• Se não for possı́vel, transforme uma folha em um nó interno adicionando x ou no lado esquerdo
ou no lado direito do nó.
DICA: crie algumas funções auxiliares para facilitar.
|#

(defstruct no
    n
    esq
    dir
)

(setq minhaArvore
    (make-no 
        :n 52
        :esq (make-no :n 32               ;pode omitir o NIL 
                      :esq (make-no :n 12 :esq NIL :dir NIL) 
                      :dir (make-no :n 35 :esq NIL :dir NIL)
             )
        :dir (make-no :n 56 
                      :esq (make-no :n 55 :esq NIL :dir NIL) 
                      :dir (make-no :n 64 :esq NIL :dir NIL)
             ) 
    )
)

(defun soma (arv)
    (if (null arv)
        0
        (+ 
            (no-n arv) 
            (soma (no-esq arv)) 
            (soma (no-dir arv))
        )
    )
)

(defun buscaElemento (arv x)
    (if (null arv)
        NIL
        (or 
            (= (no-n arv) x)
            (buscaElemento (no-esq arv) x) 
            (buscaElemento (no-dir arv) x)
        )
    )
)

(defun minimo (x y)
    (if (< x y)
        x
        y
    )
)

(setq INF 1000)

(defun minimoElemento (arv)
    (if (null arv)
        INF
        (minimo 
            (no-n arv) 
            (minimo 
                (minimoElemento (no-esq arv)) 
                (minimoElemento (no-dir arv))
            )
        )
    )
)

(defun incrementa (arv x)
    (if (not (null arv))
        (progn
            (setf (no-n arv) (+ (no-n arv) x))
            (incrementa (no-esq arv) x)
            (incrementa (no-dir arv) x)
        )
    )
)

;A: Crie uma função com a seguinte assinatura: ocorrenciasElemento (arv x), a qual recebe um
;número e deve retornar a quantidade de ocorrências dele na árvore.
(defun ocorrenciasElemento (arv_parametro x)
	(if (null arv_parametro)
		0
		(if (= (no-n arv_parametro) x)
			(+ 1 (ocorrenciasElemento (no-esq arv_parametro) x) (ocorrenciasElemento (no-dir arv_parametro) x))
			(+ (ocorrenciasElemento (no-esq arv_parametro) x) (ocorrenciasElemento (no-dir arv_parametro) x))
		)
	)
)

;B: Crie uma função com a seguinte assinatura: maioresQueElemento (arv x), a qual recebe um número
;e deve retornar a quantidade de números maiores que ele na árvore.

(defun maioresQueElemento (arv x)
    (if (null arv)
        0
        (if (> (no-n arv) x)
            (+ 1 (+ (maioresQueElemento (no-esq arv) x) (maioresQueElemento (no-dir arv) x)))
            (+ (maioresQueElemento (no-esq arv) x) (maioresQueElemento (no-dir arv) x))))
)

;C: Crie uma função com a seguinte assinatura: mediaElementos (arv), a qual deve retornar a média
;dos números na árvore.

(defun mediaElementos (arv)
    (/ (soma arv) (quantidade arv))
)

;D: Crie uma função com a seguinte assinatura: quantidade (arv), a qual deve retornar a quantidade
;de elementos na árvore.
(defun quantidade (arv)
    (if (null arv)
        0
        (+ 1 (+ (quantidade (no-esq arv)) (quantidade (no-dir arv)))))
)
;E: Crie uma função com a seguinte assinatura: elementos (arv), a qual deve retornar uma lista com
;todos os elementos na árvore.
(defun elementos (arv)
    (if (not (null arv))
        (cons 
        	(no-n arv) 
        	(nconc (elementos (no-esq arv)) (elementos (no-dir arv)))
        )
    )
)
;F: Crie uma função com a seguinte assinatura: substituir (arv x y), a qual recebe dois números como
;parâmetro e deve buscar e alterar todas as ocorrências de x pelo valor y.
(defun substituir (arv x y)
    (if (not (null arv))
        (progn
            (
            	if (= (no-n arv) x)
            	(setf (no-n arv) y)
            	(setf (no-n arv) (no-n arv))            	
            )
            (substituir (no-esq arv) x y)
            (substituir (no-dir arv) x y)
        )
    )
)
;G: Crie uma função com a seguinte assinatura: posordem (arv), a qual deve retornar a lista de números
;visitados em percorrimento pós-ordem.
(defun posordem (arv)
    (if (null arv)
        NIL
        (nconc 
        	(nconc (posordem (no-esq arv)) (posordem (no-dir arv))) 
        	(list (no-n arv))
        )
    )
)

;H: Crie uma função com a seguinte assinatura: preordem (arv), a qual deve retornar a lista de números
;visitados em percorrimento pré-ordem.
(defun preordem (arv)
    (if (null arv)
    	NIL
        (nconc (nconc (list (no-n arv)) (preordem (no-esq arv))) (preordem (no-dir arv)))
    )
)

;I: Crie uma função com a seguinte assinatura: emordem (arv), a qual deve retornar a lista de números
;visitados em percorrimento em-ordem.
(defun emordem (arv)
    (if (not (null arv))
        (nconc (nconc (emordem (no-esq arv)) (list (no-n arv))) (emordem (no-dir arv)))
    )
)

;J: Crie uma função com a seguinte assinatura: subtraiParesImpares (arv), a qual deve retornar a
;soma de todos os números pares - (menos) a soma de todos os números ı́mpares.
(defun subtraiParesImpares (arv)
	(- (somaPares arv) (somaImpares arv))
)
(defun somaPares (arv)
	(if (not (null arv))
		(if ((lambda (x) (= (mod x 2) 0))(no-n arv))
			(+ (no-n arv) (somaPares (no-esq arv)) (somaPares (no-dir arv)))
			(+ (somaPares (no-esq arv)) (somaPares (no-dir arv)))
		)
		0
	)
)

(defun somaImpares (arv)
	(if (not (null arv))
		(if ((lambda (x) (/= (mod x 2) 0))(no-n arv))
			(+ (no-n arv) (somaImpares (no-esq arv)) (somaImpares (no-dir arv)))
			(+ (somaImpares (no-esq arv)) (somaImpares (no-dir arv)))
		)
		0
	)
)

;K: Crie uma função com a seguinte assinatura: novoNo (x), a qual recebe um número como parâmetro
;e deve retornar uma nova árvore com apenas o nó contendo o valor x.
(defun novoNo (x)
	(make-no :n x)
)
(defun main()
    (write-line (write-to-string (soma minhaArvore)))
    (write-line (write-to-string (buscaElemento minhaArvore 35)))
    (write-line (write-to-string (buscaElemento minhaArvore 36)))
    (write-line (write-to-string (minimoElemento minhaArvore)))
    ;(write-line (write-to-string (incrementa minhaArvore 2)))
    (write-line (write-to-string minhaArvore))
    (write-line (write-to-string (ocorrenciasElemento minhaArvore 32)))
    (write-line (write-to-string (maioresQueElemento minhaArvore 32)))
    (write-line (write-to-string (mediaElementos minhaArvore)))
    (write-line (write-to-string (quantidade minhaArvore)))
    (write-line (write-to-string (elementos minhaArvore)))
    ;(write-line (write-to-string (substituir minhaArvore 32 12)))
    ;(write-line (write-to-string (elementos minhaArvore)))
    (write-line (write-to-string (posordem minhaArvore)))
    (write-line (write-to-string (preordem minhaArvore)))
    (write-line (write-to-string (emordem minhaArvore)))
    ;(write-line (write-to-string (somaPares minhaArvore)))
    ;(write-line (write-to-string (somaImpares minhaArvore)))
    (write-line (write-to-string (subtraiParesImpares minhaArvore)))
    (write-line (write-to-string (novoNo 1)))
)

(main)