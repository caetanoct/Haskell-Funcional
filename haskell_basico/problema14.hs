mdc :: Int -> Int -> Int
mdc x y | (y == 0) = x
		| otherwise = (mdc y (x`mod`y))

coprimos :: Int -> Int -> Bool
coprimos x y | ((mdc x y) == 1) = True
			 | otherwise = False


main = do
	putStrLn("Digite o x (algoritmo coprimos)")
	xstring <- getLine
	let x = (read xstring :: Int)
	putStrLn("Digite o y (algoritmo coprimos)")
	xstring <- getLine
	let y = (read xstring :: Int)
	
	if(coprimos x y) then
		putStrLn("sao coprimos")
	else
		putStrLn("nao sao coprimos")