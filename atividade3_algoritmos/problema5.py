from math import sqrt

print("Digite os pontos na forma: x y z")
print("Digite o ponto 1: ")
x1,y1,z1 = input().split()
x1 = int(x1)
y1 = int(y1)
z1 = int(z1)
print("Digite o ponto 2: ")
x2,y2,z2 = input().split()
x2 = int(x2)
y2 = int(y2)
z2 = int(z2)

print((lambda x1,y1,z1,x2,y2,z2: sqrt((x1-x2)**2+(y1-y2)**2+(z1-z2)**2))(x1,y1,z1,x2,y2,z2))