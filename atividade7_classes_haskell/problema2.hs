class (Integral x) => MeuInt x where
	bigger :: x -> x -> x
	smaller :: x -> x -> x

	bigger a b 	| a > b = a
				| otherwise = b

	smaller a b | a == (bigger a b) = b
				| otherwise = b

instance MeuInt Integer
instance MeuInt Int
