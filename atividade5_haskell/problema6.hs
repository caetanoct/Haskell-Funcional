{-
6. Crie uma função com assinatura ocorrencias :: [Int] -> Int -> Int, a qual recebe uma lista de
Int e um Int e retorna o número de vezes em que o elemento está presente na lista. Não utilize nenhuma
função pronta do Haskell para realizar esta tarefa.
-}

ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) x =
	if (a == x) then
		((ocorrencias b x) + 1)
	else
		(ocorrencias b x)

main = do
	putStrLn("Ocorrencias do numero 10 em [1,23,213,2312,523,523,1432,10,41324,10,10,0,0,213,321,4,1] = "++show(ocorrencias[1,23,213,2312,523,523,1432,10,41324,10,10,0,0,213,321,4,1] 10))
		
