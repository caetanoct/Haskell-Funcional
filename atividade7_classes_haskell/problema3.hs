class (Integral x) => MeuInt x where
	bigger :: x -> x -> x
	smaller :: x -> x -> x
	par :: x -> Bool 
	impar :: x -> Bool
	primo :: x -> Bool
	primoRecursivo :: x -> x -> Bool
	mdc :: x -> x -> x
	(===) :: x -> x -> Bool
	plus :: x -> x -- incrementa número dado
	(+++) :: x -> x -> x -- retorna a soma dos 2 numeros + 3

	bigger a b 	| a > b = a
				| otherwise = b

	smaller a b | a == (bigger a b) = b
				| otherwise = a


	par a = (a `mod` 2) == 0
	impar a = not (par a)

	primo a = (primoRecursivo a 1)
	primoRecursivo n fator	| (fator == n) = True
							| (fator == 1) = primoRecursivo n (fator + 1)
							| (n `mod` fator /= 0) = primoRecursivo n (fator + 1)
							| otherwise = False
	
	mdc a 0 = a
	mdc a b = (mdc b (a `mod`b))

	a === b = ((bigger a b) - (smaller a b)) <= 1    

	plus a = (a+1)

	a +++ b = (a + b + 3)
instance MeuInt Integer
instance MeuInt Int


main = do		
    print (bigger (4::Integer) (12::Integer))    
    putStrLn("smaller 4 12")
    print (smaller (4::Integer) (12::Integer))
    putStrLn("par 1")    
    print (par (1::Integer))    
    putStrLn("impar 1")
    print (impar (1::Integer))    
    putStrLn("primo 7")
    print (primo (7::Integer))
    putStrLn("primo 8")
    print (primo (8::Integer))    
    putStrLn("mdc 25 5")
    print (mdc (25::Integer) (5::Integer))
    putStrLn("diferenca(2 1) <= 1")
    print ((1::Integer) === (2::Integer))        
    putStrLn("plus 2")
    print(plus 2::Integer)
    putStrLn("2 +++ 2")
    print((2::Integer) +++ (2::Integer))