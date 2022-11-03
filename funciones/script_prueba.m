addpath("../AnSyS2022_PU1_m")

[n, x] = senial(26287);
plotCompletoSVID(n,x, 'n', 'x[n]', 'Señal ejercicio 1');
ds = 0.0001; s = [-1/2:ds:1/2]; X = zeros(size(s));

for k = 1:length(s)
  X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
end

plotCompleto(s, abs(X), 's', 'Modulo de la TFTD{x[n]}');
plotCompleto(s, angle(X), 's', 'Fase de la TFTD{x[n]}');