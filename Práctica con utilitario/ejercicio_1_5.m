[n,x] = senial(26287);

y1 = sistema1(x);
[s, Y1] = TFTD(n,y1);
plotCompleto(s,abs(Y1), 'TFTD de la salida del sistema 1', 'n', 'Y1')

y2 = sistema2(x);
[s, Y2] = TFTD(n,y2);
plotCompleto(s,abs(Y2), 'TFTD de la salida del sistema 2', 'n', 'Y2')

y3 = sistema3(x);
[s, Y3] = TFTD(n,y3);
plotCompleto(s,abs(Y3), 'TFTD de la salida del sistema 3', 'n', 'Y3')

y4 = sistema4(x);
[s, Y4] = TFTD(n,y4);
plotCompleto(s,abs(Y4), 'TFTD de la salida del sistema 4', 'n', 'Y4')
