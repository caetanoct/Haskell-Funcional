{-
2. Crie uma função com assinatura media :: [Int] -> Float, a qual recebe uma lista de Int e retorna
a média de todos os elementos da lista. Retorne 0 caso a lista for vazia. Não utilize nenhuma função
pronta do Haskell para realizar esta tarefa. DICA: utilize a função fromIntegral para converter um tipo
inteiro para um tipo compatı́vel com o operador de divisão /
-}
comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (a:b) = 1 + comprimento b

media :: [Int] -> Float
media [] = 0
media (a:b) =  fromIntegral(soma(a:b))/fromIntegral(comprimento(a:b))

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
	putStrLn("Média de [1..10] = "++show(media[1..10]))