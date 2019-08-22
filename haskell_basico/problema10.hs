maior2 :: Float -> Float -> Float
maior2 b c = 
	if (b < c) then
		c
	else
		b		
maior :: Float -> Float -> Float -> Float
maior a b c = 
	if (a>b && a>c) then
		a
	else
		maior2 b c

main = do
	putStrLn("Digite o numero 1")
	xstring <- getLine
	let a = (read xstring :: Float)
	putStrLn("Digite o numero 2")
	xstring <- getLine
	let b = (read xstring :: Float)
	putStrLn("Digite o numero 3")
	xstring <- getLine
	let c = (read xstring :: Float)
	print(maior a b c)