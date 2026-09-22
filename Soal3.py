import math

x = 1
eksak = math.sin(x)

print("Nilai eksak sin(1) =", eksak)
print("N\tPendekatan\t\tAbsolute Error\tRelative Error\tRPE")

for N in range(1, 6):
    S = 0

    for n in range(N):
       S += ((-1) ** n) * (x ** (2*n + 1)) / math.factorial(2*n + 1)
    AE = abs(eksak - S)
    RE = AE / abs(eksak)
    RPE = RE * 100

    print(f"{N}\t{S:.15f}\t{AE:.15f}\t{RE:.8f}\t{RPE:.8f}%")