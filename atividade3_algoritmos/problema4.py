from math import sqrt
print("Digite os coeficientes da função de segundo grau do modo: a b c")
a,b,c = input().split()
a = int(a)
b = int(b)
c = int(c)
print((lambda a, b, c: [(-b+sqrt(b*b-4*a*c))/2*a, (-b-sqrt(b*b-4*a*c))/2*a] if b*b-4*a*c >= 0 else "Delta < 0 -> Raiz irracional")(a,b,c))