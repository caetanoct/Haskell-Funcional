data Ponto = Ponto2D (Float,Float)

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D (a,b)) (Ponto2D (x,y)) = ((a-x)**2 + (b-y)**2)**(1/2)


determinante :: Ponto -> Ponto -> Ponto -> Float
determinante (Ponto2D (x1,y1)) (Ponto2D (x2,y2)) (Ponto2D (x3,y3)) = (x1*y2 + y1*x3 + x2*y3)-(x3*y2+y3*x1+x2*y1)

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (Ponto2D (x1,y1)) (Ponto2D (x2,y2)) (Ponto2D (x3,y3)) =
	if ((determinante (Ponto2D (x1,y1)) (Ponto2D (x2,y2)) (Ponto2D (x3,y3))) == 0) then
		True
	else
		False

main = do
	print (distancia (Ponto2D (1,1)) (Ponto2D (1,2)))
	print (colineares (Ponto2D (1,1)) (Ponto2D (2,2)) (Ponto2D (3,3)))


