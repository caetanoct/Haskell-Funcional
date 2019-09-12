dist :: Float -> Float -> Float -> Float -> Float -> Float -> Float
dist a b c x y z = (((a-x)**2+(b-y)**2+(c-z)**2)**(0.5))

main = do
	putStrLn("Digite o x do pto 1")
	xstring <- getLine
	let a = (read xstring :: Float)
	putStrLn("Digite o y do pto 1")
	xstring <- getLine
	let b = (read xstring :: Float)
	putStrLn("Digite o z do pto 1")
	xstring <- getLine
	let c = (read xstring :: Float)
	putStrLn("Digite o x do pto 2")
	xstring <- getLine
	let x = (read xstring :: Float)
	putStrLn("Digite o y do pto 2")
	xstring <- getLine
	let y = (read xstring :: Float)
	putStrLn("Digite o z do pto 2")
	xstring <- getLine
	let z = (read xstring :: Float)
	print(dist a b c x y z)