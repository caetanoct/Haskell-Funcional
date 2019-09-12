{-
8. Crie uma função com assinatura inverte :: [t] -> [t], a qual recebe uma lista como parâmetro e
deve retornar a mesma invertida. Não utilize nenhuma função pronta do Haskell para realizar esta tarefa.
-}
inverte :: [t] -> [t]
inverte [] = []
inverte (a:b) = inverte b ++ [a]

main = do
	stringl <- getLine
	let t = read stringl :: [Int]
	print (inverte t)