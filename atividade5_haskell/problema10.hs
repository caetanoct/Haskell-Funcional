{-
10. Crie uma função com assinatura filtrar :: (t -> Bool) -> [t] -> [t], a qual recebe uma função,
uma lista e retorna uma nova lista. Esta função aplica a função recebida como parâmetro sobre cada
elemento da lista e caso o retorno da função for verdadeiro, então o elemento fará parte da nova lista, caso
contrário não. Para esta tarefa, utilize o conceito de list comprehension.
-}
filtrar :: (t -> Bool) -> [t] -> [t]
filtrar _ [] = []
filtrar f (a:b) = [a | f a] ++ (filtrar f b)

main = do
  
  print (filtrar f [-11,10,10,0,0,-11])
  	where
  		f t = t >= 0