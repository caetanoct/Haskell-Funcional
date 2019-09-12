
par_ou_impar = lambda x: "par" if x % 2 == 0 else "impar"

print(list(map(par_ou_impar, range(1,int(input("Digite até que número vai a sequência"))+1))))