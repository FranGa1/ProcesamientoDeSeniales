function y = sistema_ej_2(x)
    N = length(x);
    y = zeros(N,1);
    for k=1:8820
        y(k) = x(k);
    end

    for k=8821:17640
        y(k) = x(k) + 0.45*x(k-8820);
    end

    for k=17641:N
        y(k) = x(k) + 0.45*x(k-8820) + 0.2*x(k-17640);
    end
end

