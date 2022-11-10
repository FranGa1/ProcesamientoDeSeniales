n = 0:45000;
x = deltaK(n);
y1 = sistema_ej_2(x);
y = y_filtro(y1); 

plotCompletoSVID(n,y1);
plotCompletoSVID(n,y);
