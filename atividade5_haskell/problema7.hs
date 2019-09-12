{-
7. Motifique o arquivo alunos.hs (disponı́vel no Moodle) de forma a adicionar novas funções:

A: Crie uma função com a seguinte assinatura: aprovados :: [(Int, String, Float)] -> [String],
a qual recebe uma lista de alunos e retorna uma lista com o nome dos alunos aprovados. Um aluno
está aprovado se a sua média é maior ou igual a 6. Utilize map e filter para resolver esta questão.

B: Crie uma função com a seguinte assinatura: aprovados2 :: [(Int, String, Float)] -> [String],
a qual recebe uma lista de alunos e retorna uma lista com o nome dos alunos aprovados. Um aluno
está aprovado se a sua média é maior ou igual a 6. Não utilize map e filter para resolver esta
questão. Utilize o conceito de list comprehension.

C: Utilize (e modifique, se necessário) a função gerarPares vista em aula e disponı́vel no arquivo
alunos.hs para formar duplas de alunos. Note que um aluno não pode fazer dupla consigo mesmo.	
-}


alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getIndex :: (Int, String, Float) -> Int	
getIndex (a,b,c) = a

getNota :: (Int, String, Float) -> Float
getNota (a,b,c) = c

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

aprovadoAluno :: (Int, String, Float) -> Bool
aprovadoAluno (a,b,c) = (c >= 6)

aprovados :: [(Int, String, Float)] -> [String]
aprovados (a:b) = map getNome(filter aprovadoAluno (a:b))

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 (a:b) = [getNome(a) | aprovadoAluno a] ++ aprovados2 b

aprovados3 :: [(Int, String, Float)] -> [String]
aprovados3 [] = []
aprovados3 (a:b) = 
	if ((getNota a) >= 6) then
		(getNome a : aprovados3 (b))
	else
		(aprovados3 b)

main = do
    print (getNota(getPrimeiroAluno alunos))
    print (aprovados alunos)
    print (aprovados2 alunos)
    print (gerarPares alunos)