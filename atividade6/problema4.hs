data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

--recebe um numero e deve retornar a quantidade de ocorrencias dele na arvore
ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x =
	if (n == x) then
		1 + (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)
	else
		0 + (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null x = 0
maioresQueElemento (No n esq dir) x =
	if (n > x) then
		1 + (maioresQueElemento esq x) + (maioresQueElemento dir x)
	else
		0 + (maioresQueElemento esq x) + (maioresQueElemento dir x)

quantidadeElementosNaArvore :: Arvore -> Int
quantidadeElementosNaArvore Null = 0
quantidadeElementosNaArvore (No n esq dir) =
	1 + (quantidadeElementosNaArvore esq) + (quantidadeElementosNaArvore dir)

mediaElementosArvore :: Arvore -> Float
mediaElementosArvore Null = 0
mediaElementosArvore a = fromIntegral(somaElementos a)/fromIntegral(quantidadeElementosNaArvore a)

quantidade :: Arvore -> Int
quantidade a = quantidadeElementosNaArvore a

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = n : elementos esq ++ elementos dir
main = do 
	putStrLn (show (somaElementos minhaArvore))
	putStrLn (show (buscaElemento minhaArvore 30))
	putStrLn (show (buscaElemento minhaArvore 55))
	putStrLn (show (minimoElemento minhaArvore))
	putStrLn (show (ocorrenciasElemento minhaArvore 64))
	print(maioresQueElemento minhaArvore 52)
	putStrLn("quantidade de elementos na arvore = " ++ show(quantidadeElementosNaArvore minhaArvore))
	putStrLn("Soma dos elementos na arvore = "++ show(somaElementos minhaArvore))
	putStrLn("Media elementos na arvore = "++show(mediaElementosArvore minhaArvore))
	print(elementos minhaArvore)