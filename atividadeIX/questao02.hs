main = do
	putStrLn "Digite a nota 1"
	n1S <- getLine
	let n1 = read n1S :: Float
	putStrLn "Digite a nota 2"
	n2S <- getLine
	let n2 = read n2S :: Float
	putStrLn "Digite a nota 3"
	n3S <- getLine
	let n3 = read n3S :: Float


	putStrLn((\x y z -> if ((x+y+z)/3) >= 6 then "Aprovado" else "Reprovado")n1 n2 n3)