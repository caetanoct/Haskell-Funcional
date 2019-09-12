{-
3. Crie uma função com assinatura menor :: [Int] -> Int, a qual recebe uma lista de Int e retorna o
menor elemento da lista. Retorne 0 caso a lista for vazia. Não utilize nenhuma função pronta do Haskell
para realizar esta tarefa.
-}
comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (a:b) = 1 + comprimento b

menor :: [Int] -> Int
menor [] = 0
menor (a:b) = 
	if (a <= menor b || (comprimento b) == 0) then
		a
	else
		menor b
main = do
	putStrLn("menor de [4,3,6,123,432,-32,0,1,0] = "++show(menor[4,3,6,123,432,-32,0,1,0]))
	putStrLn("menor de [1..10] = "++show(menor[1..10]))