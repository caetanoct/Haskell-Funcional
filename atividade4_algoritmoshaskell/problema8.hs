bhaskara :: Float -> Float -> Float -> String
bhaskara a b c = 
	if(b**2 - 4*a*c) >= 0 then
		("raiz 1 = "++show((-b+(b**2 - 4*a*c))/2*a) ++ " raiz 2 = " ++show((-b-(b**2 - 4*a*c))/2*a))
	else
		"delta < 0"
main = do
	putStrLn("Digite o coeficiente 1")
	xstring <- getLine
	let a = (read xstring :: Float)
	putStrLn("Digite o coeficiente 2")
	xstring <- getLine
	let b = (read xstring :: Float)
	putStrLn("Digite o coeficiente 3")
	xstring <- getLine
	let c = (read xstring :: Float)
	putStrLn(bhaskara a b c)
