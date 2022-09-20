addpath('../funciones');
clear
clc

t = -5:0.001:5;
f = 15;
integrando = tripuls(t) .* cos(2*pi*f*t);
plotCompleto(t, cos(2*pi*f*t), "coseno");
plotCompleto(t, integrando, "integrando");
plotCompleto(t, tripuls(t), "senial v(t)");
#plotCompleto(t, integrando, "integrando");