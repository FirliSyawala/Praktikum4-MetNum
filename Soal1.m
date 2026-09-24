% Galat pada perhitungan e^(0.3) menggunakan deret Taylor

format long g

x = 0.3;
eksak = exp(x);

fprintf('Nilai eksak e^0.3 = %.15f\n', eksak);
fprintf('n\t\tPendekatan\t\tAbsolute Error\t\tRelative Error\t\tRPE\n');

for n = 0:4
    S = 0;

    for i = 0:n
        S = S + x^i / factorial(i);
    end

    AE = abs(eksak - S);
    RE = AE / abs(eksak);
    RPE = RE * 100;

    fprintf('%d\t\t%.15f\t%.15f\t%.8f\t%.8f%%\n', ...
        n, S, AE, RE, RPE);
end
