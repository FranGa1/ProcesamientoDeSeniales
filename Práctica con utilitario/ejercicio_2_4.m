n = 0:53000;
x = deltaK(n);
y1 = sistema_ej_2(x);
y_filtro2 = filtro_dos_ramas(y1);
y_filtro3 = filtro_tres_ramas(y1); 

plotCompletoSVID(n,y_filtro2, ' ', 'n', 'hf1[n]');
plotCompletoSVID(n,y_filtro3, ' ', 'n', 'hf3[n]');
