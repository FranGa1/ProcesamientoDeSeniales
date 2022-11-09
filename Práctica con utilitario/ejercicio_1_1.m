addpath("./AnSyS2022_PU1_m")

# Generación y gráfico de la señal
[n, x] = senial(26287);
plotCompletoSVID(n,x, 'Señal ejercicio 1', 'n', 'x[n]');

# Cálculo de su TFTD
ds = 0.0001; s = [-1/2:ds:1/2];
X = zeros(size(s));
for k = 1:length(s)
  X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
endfor

# Gráfico del módulo de la TFTD de x
plotCompleto(s, abs(X), 'Módulo de la TFTD{x[n]}', 's', 'abs(X)');
# Gráfico de la fase de la TFTD de x
plotCompleto(s, angle(X), 'Fase de la TFTD{x[n]}', 's', 'angle(X)');
