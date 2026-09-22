import numpy as np
# Metode A: Perhitungan secara eksak
S_loop = 0
for k in range(1, 21):
    S_loop += 1 / k

# Metode B: Setiap pembagian dibulatkan 5 angka desimal
nDigits = 5
terms = []

for k in range(1, 21):
    nilai = 1 / k
    nilai_bulat = round(nilai, nDigits)
    terms.append(nilai_bulat)

S_bulat = sum(terms)

# Metode C: Tanpa looping menggunakan fungsi sum
k = np.arange(1, 21)
S_vec = np.sum(1 / k)

# Nilai referensi
S_ref = S_vec

# Menghitung error
AE_loop = abs(S_ref - S_loop)
RE_loop = AE_loop / abs(S_ref)
RPE_loop = RE_loop * 100

AE_bulat = abs(S_ref - S_bulat)
RE_bulat = AE_bulat / abs(S_ref)
RPE_bulat = RE_bulat * 100

AE_vec = abs(S_ref - S_vec)
RE_vec = AE_vec / abs(S_ref)
RPE_vec = RE_vec * 100

print("Metode\t\t\tHasil\t\t\tAbsolute Error\tRelative Error\tRPE")
print(f"Eksak/Looping\t\t{S_loop:.15f}\t{AE_loop:.15f}\t{RE_loop:.10f}\t{RPE_loop:.10f}%")
print(f"Pembulatan\t\t{S_bulat:.15f}\t{AE_bulat:.15f}\t{RE_bulat:.10f}\t{RPE_bulat:.10f}%")
print(f"Tanpa Looping (sum)\t{S_vec:.15f}\t{AE_vec:.15f}\t{RE_vec:.10f}\t{RPE_vec:.10f}%")