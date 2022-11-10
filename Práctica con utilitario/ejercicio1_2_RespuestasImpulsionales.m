n = [-10:10];

h1 = 0.5*deltaK(n) + 0.5*deltaK(n-1);
h2 = 0.5*deltaK(n) - 0.5*deltaK(n-1);
h3 = 0.25 .*(0.5).^n .* u_SVID(n) + 0.25 .*(0.5).^(n-1) .* u_SVID(n-1);
h4 = 0.25 .*(-0.5).^n .* u_SVID(n) - 0.25 .* (-0.5).^(n-1) .* u_SVID(n-1);

plotCompletoSVID(n,h1, 'Respuesta impulsional Sistema 1', 'n', 'h1[n]')

plotCompletoSVID(n,h2, 'Respuesta impulsional Sistema 2', 'n', 'h2[n]')

plotCompletoSVID(n,h3, 'Respuesta impulsional Sistema 3', 'n', 'h3[n]')

plotCompletoSVID(n,h4, 'Respuesta impulsional Sistema 4', 'n', 'h4[n]')


%print -f1 -dpng "Ej1_2_Sistema1_RespImpulsional"
%print -f2 -dpng "Ej1_2_Sistema2_RespImpulsional"
%print -f3 -dpng "Ej1_2_Sistema3_RespImpulsional"
%print -f4 -dpng "Ej1_2_Sistema4_RespImpulsional"
