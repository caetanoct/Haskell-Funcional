avaliar :: Float -> Float -> Float -> String
avaliar x y z = 	
	if ((x+y+z)/3 >= 6) then
		"aprovado"
	else
		"reprovado"

main = do
	putStrLn("Digite a nota 1")
	xstring <- getLine
	let a = (read xstring :: Float)
	putStrLn("Digite a nota 2")
	xstring <- getLine
	let b = (read xstring :: Float)
	putStrLn("Digite a nota 3")
	xstring <- getLine
	let c = (read xstring :: Float)
	print (avaliar a b c)