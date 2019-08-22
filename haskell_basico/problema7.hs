-- Computa o n-esimo termo de fib
fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = fib(n-1)+fib(n-2)

main = do
	putStrLn("Digite o n")
	xstring <- getLine
	let n = (read xstring :: Int)
	print(fib n)