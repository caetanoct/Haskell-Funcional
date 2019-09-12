n_termo_fib = lambda n: n if n <= 1 else n_termo_fib(n-1) + n_termo_fib(n-2)
print(n_termo_fib(int(input())))