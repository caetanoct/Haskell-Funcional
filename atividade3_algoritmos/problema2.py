print("Digite as 3 notas, uma em cada linha")
a = int(input())
b = int(input())
c = int(input())

avaliar = lambda a, b, c: print("aprovado") if (a+b+c)/3 >= 6 else print("reprovado")

avaliar(a, b, c)