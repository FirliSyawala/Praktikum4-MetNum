import math

x = 0.3
eksak = math.exp(x)

print("Nilai eksak e^0.3 =", eksak)
print("n\tPendekatan\t\tAbsolute Error\tRelative Error\tRPE")

for n in range(5):
    S = 0

    for i in range(n + 1):
        S += (x ** i) / math.factorial(i)

    AE = abs(eksak - S)
    RE = AE / abs(eksak)
    RPE = RE * 100

    print(f"{n}\t{S:.15f}\t{AE:.15f}\t{RE:.8f}\t{RPE:.8f}%")