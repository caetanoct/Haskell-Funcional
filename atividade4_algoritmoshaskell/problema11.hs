{-11. Crie uma fun¸c˜ao que receba dois n´umeros x e y e retorne o m´aximo divisor comum (DICA: pesquise sobre
o Algoritmo de Euclides). Leia x e y do teclado.-}
mdc :: Int -> Int -> Int
mdc x y | (y == 0) = x
		| otherwise = (mdc y (x`mod`y))

main = do
	putStrLn("Digite o x (algoritmo MDC)")
	xstring <- getLine
	let x = (read xstring :: Int)
	putStrLn("Digite o y (algoritmo MDC)")
	xstring <- getLine
	let y = (read xstring :: Int)
	print(mdc x y)
