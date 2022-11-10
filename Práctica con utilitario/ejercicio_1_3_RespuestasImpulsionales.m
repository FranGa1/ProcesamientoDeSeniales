n = [-10:10];
x = deltaK(n);

y1 = sistema1(x);
plotCompletoSVID(n,y1, 'Respuesta Impulsional Numerica 1', 'n', 'h1[n]')

y2 = sistema2(x);
plotCompletoSVID(n,y2, 'Respuesta Impulsional Numerica 2', 'n', 'h2[n]')

y3 = sistema3(x);
plotCompletoSVID(n,y3, 'Respuesta Impulsional Numerica 3', 'n', 'h3[n]')

y4 = sistema4(x);
plotCompletoSVID(n,y4, 'Respuesta Impulsional Numerica 4', 'n', 'h4[n]')

%print -f1 -dpng "Ej1_3_Sistema1_RespImpulsionalNumerica"
%print -f2 -dpng "Ej1_3_Sistema2_RespImpulsionalNumerica"
%print -f3 -dpng "Ej1_3_Sistema3_RespImpulsionalNumerica"
%print -f4 -dpng "Ej1_3_Sistema4_RespImpulsionalNumerica"


