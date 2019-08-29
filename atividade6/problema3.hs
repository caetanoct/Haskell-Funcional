data Ponto = Ponto2 Float Float | Ponto3 Float Float Float

f1 :: Ponto -> Ponto -> Float
f1 (Ponto3 x y z) (Ponto3 a b c) = 
	((x-a)**2 + (y-b)**2 + (z-c)**2)**(0.5)
f1 (Ponto2 x y) (Ponto2 a b) = 
	((x-a)**2 + (y-b)**2)**(0.5)

main = do
	print(f1 (Ponto2 1 1) (Ponto2 1 2))
	print(f1 (Ponto3 1 1 1) (Ponto3 1 2 1))