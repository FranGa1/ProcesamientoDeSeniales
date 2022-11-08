addpath("./AnSyS2022_PU1_m")

# Generación y gráfico de la señal
[n, x] = senial(27144);
plotCompletoSVID(n,x, 'n', 'x[n]', 'Señal ejercicio 1');

# Cálculo de su TFTD
ds = 0.0001; s = [-1/2:ds:1/2];
X = zeros(size(s));
for k = 1:length(s)
  X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
end

# Gráfico del módulo de la TFTD de x
plotCompleto(s, abs(X), 's', 'Mod ulo de la TFTD{x[n]}');
# Gráfico de la fase de la TFTD de x
plotCompleto(s, angle(X), 's', 'Fase de la TFTD{x[n]}');
