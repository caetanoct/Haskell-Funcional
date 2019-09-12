type Matrix = [[Int]]


{-
[[1,1,1] , [2,2,2], [3,3,3]]

| 1 1 1 | = 3
| 2 2 2 | = 6
| 3 3 3 | = 9  => 3+6+9 == 18
-}

-- matriz, num linhas
somaMatriz :: Matrix -> Int  -> Int
somaMatriz _ 0 = 0
somaMatriz (a:b) linhas = somaDaLinha a + (somaMatriz b (linhas-1))
--Soma uma linha da matriz
somaDaLinha :: [Int] -> Int
somaDaLinha [] = 0
somaDaLinha (a:b) = a + somaDaLinha b

main = do
	print (somaMatriz [[1,1,1],[2,2,2],[3,3,3]] 3)