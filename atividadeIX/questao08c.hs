type Matrix = [[Int]]

minhaMatrix :: Matrix
minhaMatrix = 
	[[1,2,3],
	[4,5,6],
	[7,8,9]]

existeNumeroIrregularNaLinha :: Int -> [Int] -> Bool
existeNumeroIrregularNaLinha n [] = False
existeNumeroIrregularNaLinha n (a:b) =
	if a > n*n || a < 1 then
		True
	else
		existeNumeroIrregularNaLinha n b

existeNumeroIrregularNaMatriz :: Int -> Matrix -> Bool
existeNumeroIrregularNaMatriz n [] = False
existeNumeroIrregularNaMatriz n (a:b) =
	if existeNumeroIrregularNaLinha n a then
		True
	else
		existeNumeroIrregularNaMatriz n b
								
posValida :: Matrix -> (Int,Int) -> Bool
posValida mat (x,y) =
	if (x >= getMatrixSize mat || x < 0 || y < 0 || y >= getMatrixSize mat) then
		False
	else
		True

getMatrixSize :: Matrix -> Int
getMatrixSize [] = 0
getMatrixSize (a:b) = 1 + getMatrixSize b

getDiagonalPrincipal :: Matrix -> [Int]
getDiagonalPrincipal mat = (getDiagonalPrincipalAux mat 0)

getDiagonalPrincipalAux :: Matrix -> Int -> [Int]
getDiagonalPrincipalAux [] _ = []
getDiagonalPrincipalAux (a:b) pos = a!!pos : getDiagonalPrincipalAux b (pos+1)

getDiagonalSecundaria :: Matrix -> [Int]
getDiagonalSecundaria mat = (getDiagonalSecundariaAux mat ((getMatrixSize mat)-1))

getDiagonalSecundariaAux :: Matrix -> Int -> [Int]
getDiagonalSecundariaAux [] _ = []
getDiagonalSecundariaAux (a:b) pos = a!!pos : getDiagonalSecundariaAux b (pos-1)



somaLinha :: [Int] -> Int
somaLinha [] = 0
somaLinha (a:b) = a + somaLinha b

main = do
	print(getDiagonalPrincipal minhaMatrix)
	print(getDiagonalSecundaria minhaMatrix)
	--print(posValida minhaMatrix (0,0))
	--print(posValida minhaMatrix (3,0))
	--print(posValida minhaMatrix (0,3))
	--print(posValida minhaMatrix (3,0))
	--print(posValida minhaMatrix (0,3))
	--print(posValida minhaMatrix (2,0))
	--print(posValida minhaMatrix (0,2))
	--print (existeNumeroIrregularNaLinha (getMatrixSize minhaMatrix) (minhaMatrix!!1))
	--print (existeNumeroIrregularNaMatriz (getMatrixSize minhaMatrix) minhaMatrix)
