{-
4. Crie uma função com assinatura diferencaMaiorMenor :: [Int] -> Int, a qual recebe uma lista de
Int e retorna a diferença entre o maior e o menor elemento da lista. Retorne 0 caso a lista for vazia. Não
utilize nenhuma função pronta do Haskell para realizar esta tarefa.
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

maior :: [Int] -> Int
maior [] = 0
maior (a:b) = 
	if (a >= maior b || (comprimento b) == 0) then
		a
	else
		maior b

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor (a:b) = (maior(a:b))-(menor(a:b))

main = do
	putStrLn("dif maiormenor [4,3,6,123,432,-32,0,1,0] = "++show(diferencaMaiorMenor[4,3,6,123,432,-32,0,1,0]))
	putStrLn("dif maiormenor [1..10] = "++show(diferencaMaiorMenor[1..10]))