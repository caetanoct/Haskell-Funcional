{-
5. Crie uma função com assinatura busca :: [Int] -> Int -> Bool, a qual recebe uma lista de Int e um
Int e retorna se o elemento passado como parâmetro encontra-se na lista ou não. Não utilize nenhuma
função pronta do Haskell para realizar esta tarefa.
-}
busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a:b) x = 
	if (a == x) then
		True
	else
		busca b x

main = do
	putStrLn("Numero 10 esta em [1..10]? = "++show(busca[1..10] 10))
	putStrLn("Numero 11 esta em [1..10]? = "++show(busca[1..10] 11))