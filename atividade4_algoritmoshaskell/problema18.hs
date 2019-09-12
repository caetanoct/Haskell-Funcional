{-
18. Crie uma função que receba três parâmetros Operador, x e y, e retorne o resultado da operação matemática
x Operador y. Os operadores possı́veis de informar são +, -, *, /. Leia o Operador, x e y do teclado.
-}

operador :: String -> Float -> Float-> Float
operador x a b  
 | (x == "+") = a + b
 | (x == "-") = a - b
 | (x == "*") = a * b
 | (x == "/") = a / b

main = do
	putStrLn "Digite o operador"
	x <- getLine
	putStrLn "Digite o x"
	aS <- getLine
	putStrLn "Digite o y"
	bS <- getLine
	let a = read aS :: Float
	let b = read bS :: Float
	print(operador x a b)