{-
9. Crie uma função com assinatura mapear :: (t -> y) -> [t] -> [y], a qual recebe uma função, uma
lista e retorna uma lista. Esta função mapear fará o mesmo que a função map, ou seja, aplicar a função
recebida como parâmetro sobre cada elemento da lista e retornar a lista resultante. Não utilize map ou
filter para esta tarefa.
-}

mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear f (a:b) = f a : mapear f b

main = do
	print(mapear f [1,2,3])
	where
		f t = 10*t