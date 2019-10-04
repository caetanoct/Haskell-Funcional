#|
1. Crie uma estrutura de dados para pontos 2D, a qual deve possuir os campos x e y.

A: Crie uma fun¸c˜ao distancia (a b), a qual recebe dois pontos como parˆametro de deve retornar a
distˆancia entre eles.

B: Crie uma fun¸c˜ao colineares (a b c), a qual recebe trˆes pontos como parˆametro de deve retornar
se eles s˜ao colineares ou n˜ao. DICA: os trˆes pontos ser˜ao colineares se o determinante de suas
coordenadas for igual a 0.

C: Crie uma fun¸c˜ao formaTriangulo (a b c), a qual recebe trˆes pontos como parˆametro de deve retornar se eles podem ser usados para formar um triˆangulo.
|#


(defstruct ponto
    x
    y
)


(defun distancia (p1 p2)
    (sqrt 
    	(+
        	(* (- (ponto-x p1) (ponto-x p2)) (- (ponto-x p1) (ponto-x p2)))
        	(* (- (ponto-y p1) (ponto-y p2)) (- (ponto-y p1) (ponto-y p2)))
    	)
    )
)

(defun colineares (p1 p2 p3)
    (= 0 
    	(- 
    		(- 
    			(- 
    				(+ 
    					(+ (* (ponto-x p1) (ponto-y p2)) (* (ponto-y p1) (ponto-x p3))) 
    					(* (ponto-x p2) (ponto-y p3))
    				)
    				(* (ponto-x p1) (ponto-y p3))
    			)
    			(* (ponto-y p1) (ponto-x p2))
    		)  
    		(* (ponto-y p2) (ponto-x p3))
    	)
    )
)

(defun formaTriangulo (p1 p2 p3)
    (setq A (distancia p1 p2))
    (setq B (distancia p2 p3))
    (setq C (distancia p3 p1))
    (and 
        (< (abs (- A B)) C)
        (and 
            (< (abs (- B C)) A)
            (and 
                (< (abs (- A C)) B)
                (and 
                    (> (+ A B) C)
                    (and 
                        (> (+ B C) A)
                        (> (+ C A) B)
                    )
                )
            )
        )
    )
)

(defun main ()
    (setq p1
        (make-ponto
            :x 1
            :y 2
    ))
    (setq p2
        (make-ponto
            :x 2
            :y 4
    ))
    (setq p3
        (make-ponto
            :x 3
            :y 6
    ))
    (setq p4
        (make-ponto
            :x 1
            :y 2
    ))
    (write-line (write-to-string (distancia p1 p2)))
    (write-line (write-to-string (distancia p2 p3)))
    (write-line (write-to-string (distancia p3 p4)))
    (write-line (write-to-string (colineares p1 p2 p3)))
    (write-line (write-to-string (colineares p2 p3 p4)))
    (write-line (write-to-string (formaTriangulo p1 p2 p3)))
    (write-line (write-to-string (formaTriangulo p2 p3 p4)))
)

(main)