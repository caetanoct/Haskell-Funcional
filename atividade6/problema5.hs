data Arvore = Null | No Int Arvore Arvore
minhaArvore :: Arvore
minhaArvore = No 52 (No 51 Null Null) Null

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = n : elementos esq ++ elementos dir

main = do
	print(elementos minhaArvore)

{-

data nao pode ser trocado para newtype, só se tver apenas 1 construtor
agora newtype sempre pode ser trocado para data, porque é como se fosse um data porém com apenas 1 construtor
é diferente de type porque type recebe um dos tipos padrões do haskell como String/Int/Float.., é um "sinonimo"

se troca de data para newtype:
problema5.hs:2:1:
    A newtype must have exactly one constructor, but ‘Arvore’ has two
    In the newtype declaration for ‘Arvore’
-}