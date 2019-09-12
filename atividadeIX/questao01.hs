
main = do
	putStrLn "Digite o x"
	xS <- getLine
	let x = read xS :: Int
	putStrLn "Digite o Y"
	yS <- getLine
	let y = read yS :: Int
	print(((\x y -> x /= y) x)y)