% Galat pada perhitungan 1/1 + 1/2 + 1/3 + ..... + 1/20
format long g

% a. Perhitungan secara eksak
S_loop = 0;

for k = 1:20
    S_loop = S_loop + 1/k;
end

% b. Masing-masing pembagian dibulatkan
nDigits = 5;
scale = 10^nDigits;

terms = 1 ./ (1:20);
terms = round(terms * scale) / scale;
S_bulat = sum(terms);

% c. Tanpa looping (menggunakan fungsi sum)
S_vec = sum(1 ./ (1:20));

% Nilai referensi
S_ref = S_vec;

% Menghitung error
AE_loop = abs(S_ref - S_loop);
RE_loop = AE_loop / abs(S_ref);
RPE_loop = RE_loop * 100;

AE_bulat = abs(S_ref - S_bulat);
RE_bulat = AE_bulat / abs(S_ref);
RPE_bulat = RE_bulat * 100;

AE_vec = abs(S_ref - S_vec);
RE_vec = AE_vec / abs(S_ref);
RPE_vec = RE_vec * 100;

fprintf('Metode\t\t\tHasil\t\t\tAbsolute Error\t\tRelative Error\t\tRPE\n');

fprintf('Eksak/Looping\t\t%.15f\t%.15f\t%.10f\t%.10f%%\n', ...
    S_loop, AE_loop, RE_loop, RPE_loop);

fprintf('Pembulatan\t\t%.15f\t%.15f\t%.10f\t%.10f%%\n', ...
    S_bulat, AE_bulat, RE_bulat, RPE_bulat);

fprintf('Tanpa Looping (sum)\t%.15f\t%.15f\t%.10f\t%.10f%%\n', ...
    S_vec, AE_vec, RE_vec, RPE_vec);
