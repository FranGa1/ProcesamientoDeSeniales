s = [-0.5:0.001:0.5];

H1 = 0.5 + 0.5 .* e .^((-1) .* i .* 2 .* pi .* s);
H2 = 0.5 - 0.5 .* e .^((-1) .* i .* 2 .* pi .* s);
H3 = zeros(size(s))
for k = 1:length(s) % Cantidad de puntos de s
  H3(k) = 0.25 * ((1 + exp(-1i * pi * 2*  s(k))) / (1 - 0.5 * exp(-1i * 2 * pi * s(k))));
  H4(k) = 0.25 * ((1 - exp(-1i * pi * 2*  s(k))) / (1 + 0.5 * exp(-1i * 2 * pi * s(k))));
end

plotCompleto(s,abs(H1), 'Modulo Respuesta en Frecuencia 1', 's', '|H1(e^(-j*2*pi*s))|')
plotCompleto(s,angle(H1), 'Fase Respuesta en Frecuencia 1', 's', 'arg(H1(e^(-j*2*pi*s)))')

plotCompleto(s,abs(H2), 'Modulo Respuesta en Frecuencia 2', 's', '|H2(e^(-j*2*pi*s))|')
plotCompleto(s,angle(H2), 'Fase Respuesta en Frecuencia 2', 's', 'arg(H2(e^(-j*2*pi*s)))')

plotCompleto(s,abs(H3), 'Modulo Respuesta en Frecuencia 3', 's', '|H3(e^(-j*2*pi*s))|')
plotCompleto(s,angle(H3), 'Fase Respuesta en Frecuencia 3', 's', 'arg(H3(e^(-j*2*pi*s)))')

plotCompleto(s,abs(H4), 'Modulo Respuesta en Frecuencia 4', 's', '|H4(e^(-j*2*pi*s))|')
plotCompleto(s,angle(H4), 'Fase Respuesta en Frecuencia 4', 's', 'arg(H4(e^(-j*2*pi*s)))')

%print -f1 -dpng "Ej1_2_Sistema1_Modulo_RespEnFrecuencia"
%print -f2 -dpng "Ej1_2_Sistema1_Fase_RespEnFrecuencia"
%print -f3 -dpng "Ej1_2_Sistema2_Modulo_RespEnFrecuencia"
%print -f4 -dpng "Ej1_2_Sistema2_Fase_RespEnFrecuencia"
%print -f5 -dpng "Ej1_2_Sistema3_Modulo_RespEnFrecuencia"
%print -f6 -dpng "Ej1_2_Sistema3_Fase_RespEnFrecuencia"
%print -f7 -dpng "Ej1_2_Sistema4_Modulo_RespEnFrecuencia"
%print -f8 -dpng "Ej1_2_Sistema4_Fase_RespEnFrecuencia"
