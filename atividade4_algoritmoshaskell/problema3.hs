area_triangulo :: Float -> Float -> Float
area_triangulo base altura = (base*altura)/2

main = do
	putStrLn("Digite a base do triangulo: ")
	xstring <- getLine
	let base = (read xstring :: Float)
	putStrLn("Digite a altura do triangulo: ")
	xsstring <- getLine
	let altura = (read xsstring :: Float)
	print("A area do triangulo eh: " ++ (show(area_triangulo base altura)))