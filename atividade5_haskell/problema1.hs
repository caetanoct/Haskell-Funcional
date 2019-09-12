{-1. Crie uma função com assinatura soma :: [Int] -> Int, a qual recebe uma lista de Int e retorna a soma
de todos os elementos da lista. Retorne 0 caso a lista for vazia. Não utilize nenhuma função pronta do
Haskell para realizar esta tarefa.-}
soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
	putStrLn("Testando soma da lista para lista [1..10]:")	
	print(soma [1..10])