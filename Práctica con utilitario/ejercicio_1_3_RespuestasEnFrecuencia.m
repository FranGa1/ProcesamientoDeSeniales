n = [-10:10];
x = deltaK(n);

y1 = sistema1(x);
[s, Y1] = TFTD(n,y1);
plotCompleto(s,abs(Y1), 'Modulo Respuesta en Frecuencia Sistema 1', 's', '|H1(e^(-i2*pi*s))|')
plotCompleto(s,angle(Y1), 'Fase Respuesta en Frecuencia Sistema 1', 's', 'arg(H1(e^(-i2*pi*s)))')

y2 = sistema2(x);
[s, Y2] = TFTD(n,y2);
plotCompleto(s,abs(Y2), 'Modulo Respuesta en Frecuencia Sistema 2', 's', '|H2(e^(-i2*pi*s))|')
plotCompleto(s,angle(Y2), 'Fase Respuesta en Frecuencia Sistema 2', 's', 'arg(H2(e^(-i2*pi*s)))')

y3 = sistema3(x);
[s, Y3] = TFTD(n,y3);
plotCompleto(s,abs(Y3), 'Modulo Respuesta en Frecuencia Sistema 3', 's', '|H3(e^(-i2*pi*s))|')
plotCompleto(s,angle(Y3), 'Fase Respuesta en Frecuencia Sistema 3', 's', 'arg(H3(e^(-i2*pi*s)))')

y4 = sistema4(x);
[s, Y4] = TFTD(n,y4);
plotCompleto(s,abs(Y4), 'Modulo Respuesta en Frecuencia Sistema 4', 's', '|H4(e^(-i2*pi*s))|')
plotCompleto(s,angle(Y4), 'Fase Respuesta en Frecuencia Sistema 4', 's', 'arg(H4(e^(-i2*pi*s)))')

%print -f1 -dpng "Ej1_3_Sistema1_Modulo_RespEnFrecuenciaNumerica"
%print -f2 -dpng "Ej1_3_Sistema1_Fase_RespEnFrecuenciaNumerica"
%print -f3 -dpng "Ej1_3_Sistema2_Modulo_RespEnFrecuenciaNumerica"
%print -f4 -dpng "Ej1_3_Sistema2_Fase_RespEnFrecuenciaNumerica"
%print -f5 -dpng "Ej1_3_Sistema3_Modulo_RespEnFrecuenciaNumerica"
%print -f6 -dpng "Ej1_3_Sistema3_Fase_RespEnFrecuenciaNumerica"
%print -f7 -dpng "Ej1_3_Sistema4_Modulo_RespEnFrecuenciaNumerica"
%print -f8 -dpng "Ej1_3_Sistema4_Fase_RespEnFrecuenciaNumerica"
