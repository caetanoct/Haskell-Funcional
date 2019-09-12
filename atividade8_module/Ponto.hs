module Ponto (Ponto (Ponto2D), distancia, colineares, formaTriangulo) where

data Ponto = Ponto2D (Float,Float)

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D (a,b)) (Ponto2D (x,y)) = ((a-x)**2 + (b-y)**2)**(1/2)