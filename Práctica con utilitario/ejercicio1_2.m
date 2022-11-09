n = [-10:10];
x = deltaK(n);

h1 = 0.5*deltaK(n) + 0.5*deltaK(n-1);
h2 = 0.5*deltaK(n) - 0.5*deltaK(n-1);
h3 = 0.25 .*(0.5).^n .* u_SVID(n) + 0.25 .*(0.5).^(n-1) .* u_SVID(n-1)
h3 = 0.25 .*(-0.5).^n .* u_SVID(n) - 0.25*(-0.5).^(n-1) .* u_SVID(n-1)

y1 = sistema1(x);
plotCompletoSVID(n,y1, 'Sistema 1 Numerico', 'n', 'h1[n]')
plotCompletoSVID(n,h1, 'Sistema 1 Analitico', 'n', 'h1[n]')

y2 = sistema2(x);
plotCompletoSVID(n,y2, 'Sistema 2 Numerico', 'n', 'h2[n]')
plotCompletoSVID(n,h2, 'Sistema 2 Analitico', 'n', 'h2[n]')

y3 = sistema3(x);
plotCompletoSVID(n,y3, 'Sistema 3 Numerico', 'n', 'h3[n]')
plotCompletoSVID(n,h3, 'Sistema 3 Analitico', 'n', 'h3[n]')

y4 = sistema4(x);
plotCompletoSVID(n,y4, 'Sistema 4 Numerico', 'n', 'h4[n]')
plotCompletoSVID(n,h4, 'Sistema 4 Analitico', 'n', 'h4[n]')
