type Matrix = [[Int]]

somaMatrizes :: Matrix -> Matrix -> Matrix
somaMatrizes [] [] = []
somaMatrizes (a:b) (c:d) = (somaLinhas a c) : (somaMatrizes b d)

somaLinhas :: [Int] -> [Int] -> [Int]
somaLinhas [] [] = []
somaLinhas (a:b) (c:d) = a+c : (somaLinhas b d)


main = do
	print (somaLinhas [1,1,1] [2,2,2])
	print (somaMatrizes [[1,1,1],[2,2,2],[3,3,3]] [[3,3,3],[2,2,2],[1,1,1]])