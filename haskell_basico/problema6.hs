triangulo :: Int -> Int -> Int -> String
triangulo a b c = 
	if (a<b+c)&&(b<a+c)&&(c<a+b) then
		"eh um triangulo"
	else
		"nao eh um triangulo"

main = do
	putStrLn("Digite a vareta 1")
	xstring <- getLine
	let a = (read xstring :: Int)
	putStrLn("Digite a vareta 2")
	xstring <- getLine
	let b = (read xstring :: Int)
	putStrLn("Digite a vareta 3")
	xstring <- getLine
	let c = (read xstring :: Int)
	print (triangulo a b c)
