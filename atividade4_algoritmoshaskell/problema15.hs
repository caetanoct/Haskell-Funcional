{-
15. Crie uma função que receba um número n e retorne a função totiente de Euler (φ(n)). A função totiente
de Euler é dada pelo número de inteiros positivos r a partir de 1 e menores que n, ou seja 1 <= r < n,
que são coprimos de n. Por exemplo, se n = 10, então os coprimos de 10 de 1 até 10-1 são {1, 3, 7, 9} e
a função deve retornar φ(n) = 4. Leia n do teclado.
-}

mdc :: Int -> Int -> Int
mdc x y
 | (y == 0) = x
 | otherwise = (mdc y (x`mod`y))

coprimos :: Int -> Int -> Bool
coprimos x y
 | ((mdc x y) == 1) = True
 | otherwise = False

totEuler :: Int -> Int -> Int
totEuler 0 numero = 0
totEuler n numero
 | (n == numero) = totEuler (n-1) numero
 | (coprimos n numero) = 1 + totEuler (n-1) numero
 | otherwise = totEuler (n-1) numero

main = do
	putStrLn("φ(n) = "++show(totEuler 10 10))