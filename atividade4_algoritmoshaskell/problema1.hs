myexp :: Float -> Float -> Float
myexp x y = x**y

main = do
	putStrLn "Digite o x: "
	xstring <- getLine
	let x = (read xstring :: Float)
	putStrLn "Digite o y: "
	ystring <- getLine
	let y = (read ystring :: Float)
	print (myexp x y)