data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float

area :: Forma -> Float
area (Triangulo base altura) = (base*altura)/2