{-
16. Crie uma função que receba dois números x e y e retorne se x é divisı́vel por y. Leia x e y do teclado.
-}

divisivel :: Int -> Int -> Bool
divisivel x y = (x `mod` y) == 0


main = do
	print("X divisivel por Y?")
	putStrLn("Digite o x")
	xString <- getLine
	let x = read xString :: Int
	putStrLn("Digite o y")
	yString <- getLine
	let y = read yString :: Int
	print(divisivel x y)