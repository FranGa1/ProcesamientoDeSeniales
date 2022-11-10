n = 0:17670;
x = deltaK(n);
y = sistema_ej_2(x);

plotCompletoSVID(n,y, 'Respuesta Implusional', 'n', 'h[n]');
