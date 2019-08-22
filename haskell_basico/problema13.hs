mdc :: Int -> Int -> Int
mdc x y | (y == 0) = x
		| otherwise = (mdc y (x`mod`y))
mmc :: Int -> Int -> Int
mmc a b =  (a*b) `div` (mdc a b)

main = do
	putStrLn("Digite o x (algoritmo MMC)")
	xstring <- getLine
	let x = (read xstring :: Int)
	putStrLn("Digite o y (algoritmo MMC)")
	xstring <- getLine
	let y = (read xstring :: Int)
	print(mmc x y)