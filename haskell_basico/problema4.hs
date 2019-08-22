funcao_xor :: Bool -> Bool -> Bool
funcao_xor x y
	| (x == True && y == False) = True
	| (x == False && y == True) = True
	| otherwise = False

main = do
	putStrLn("Digite o x (True/False)")
	xstring <- getLine
	let x = (read xstring :: Bool)
	putStrLn("Digite o y (True/False)")
	ystring <- getLine
	let y = (read ystring :: Bool)
	print (funcao_xor x y)