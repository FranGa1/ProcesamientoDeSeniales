[n,x] = senial(26287);
close all;

y1 = sistema1(x);
[s, Y1] = TFTD(n,y1);
plotCompleto(s,abs(Y1), 'Modulo de la TFTD de la salida del sistema 1', 'n', '|Y1|')
plotCompleto(s,angle(Y1), 'Fase de la TFTD de la salida del sistema 1', 'n', 'arg(Y1)')

y2 = sistema2(x);
[s, Y2] = TFTD(n,y2);
plotCompleto(s,abs(Y2), 'Modulo de la TFTD de la salida del sistema 2', 'n', '|Y2|')
plotCompleto(s,angle(Y2), 'Fase de la TFTD de la salida del sistema 2', 'n', 'arg(Y2)')

y3 = sistema3(x);
[s, Y3] = TFTD(n,y3);
plotCompleto(s,abs(Y3), 'Modulo TFTD de la salida del sistema 3', 'n', '|Y3|')
plotCompleto(s,angle(Y3), 'Fase de la TFTD de la salida del sistema 3', 'n', 'arg(Y3)')

y4 = sistema4(x);
[s, Y4] = TFTD(n,y4);
plotCompleto(s,abs(Y4), 'Modulo de la TFTD de la salida del sistema 4', 'n', '|Y4|')
plotCompleto(s,angle(Y4), 'Fase de la  TFTD de la salida del sistema 4', 'n', 'arg(Y4)')

print -f1 -dpng "Ej1_5_Sistema1_Modulo_TFTD"
print -f2 -dpng "Ej1_5_Sistema1_Fase_TFTD"
print -f3 -dpng "Ej1_5_Sistema2_Modulo_TFTD"
print -f4 -dpng "Ej1_5_Sistema2_Fase_TFTD"
print -f5 -dpng "Ej1_5_Sistema3_Modulo_TFTD"
print -f6 -dpng "Ej1_5_Sistema3_Fase_TFTD"
print -f7 -dpng "Ej1_5_Sistema4_Modulo_TFTD"
print -f8 -dpng "Ej1_5_Sistema4_Fase_TFTD"
