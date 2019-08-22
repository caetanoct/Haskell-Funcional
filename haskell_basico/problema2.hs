funcao_modulo :: Float -> Float
funcao_modulo x = 
	if (x < 0) then
		-x
	else
		x

main = do
	putStrLn "Digite o numero: "
	xstring <- getLine
	let x = (read xstring :: Float)
	print (funcao_modulo(x))