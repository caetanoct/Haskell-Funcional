type Nome = String
type Nota = Float
type Disciplina = String
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 1 = ("a1","ine1",7,7,7)
aluno 2 = ("a2","ine2",8,8,8)
aluno 3 = ("a3","ine3",10,9,8)

getNomeAluno :: Aluno -> String
getNomeAluno (a,_,_,_,_) = a

getNome :: Int -> String
getNome x = getNomeAluno (aluno x)

getMediaAluno :: Aluno -> Float
getMediaAluno (_,_,a,b,c) = (a+b+c)/3

getMedia :: Int -> Float
getMedia x = getMediaAluno (aluno x)

getSomaNota :: Int -> Float
getSomaNota x = getSomaNotaAluno (aluno x)

getSomaNotaAluno :: Aluno -> Float
getSomaNotaAluno (_,_,a,b,c) = (a+b+c)

-- Int = Num de alunos na turma
somaTurma :: Int -> Float
somaTurma 0 = 0
somaTurma x = getSomaNota x + somaTurma (x-1)

mediaTurma :: Int -> Float
mediaTurma x = (somaTurma x)/fromIntegral(x*3) 
main = do
	putStrLn(getNome 3)
	print(getMedia 3)
	print(mediaTurma 3)