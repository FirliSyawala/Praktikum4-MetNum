format long g

x = 1;
eksak = sin(x);

fprintf('Nilai eksak sin(1) = %.15f\n', eksak);
fprintf('N\tPendekatan\tAbsolute Error\tRelative Error\tRPE\n');

for N = 1:5
    S = 0;

    for k = 0:N-1
        S = S + ((-1)^k) * x^(2*k+1) / factorial(2*k+1);
    end

    AE = abs(eksak - S);
    RE = AE / abs(eksak);
    RPE = RE * 100;

    fprintf('%d\t%.15f\t%.15f\t%.8f\t%.8f%%\n', ...
        N, S, AE, RE, RPE);
end
