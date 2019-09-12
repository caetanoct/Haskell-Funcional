data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float

area :: Forma -> Float
area (Triangulo base altura) = (base*altura)/2

main = do
   print(area(Triangulo 2.0 2.0))
