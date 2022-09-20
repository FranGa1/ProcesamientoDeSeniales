clear
addpath("../funciones")

a = 1;
b = 1;

t = -5:0.001:5;
u = escalonSVIC(t, 0);

exp1 = e.^(-1.*t.*a);
exp2 = e.^(-1.*t.*b);

x = exp1.* u;
h = exp2.* u;

if (b != a)
  res = (b-a)^(-1).*(exp1-exp2).*u;
else
  res = t.*exp1.*u;
endif

plotCompleto(t, res);

convolucion = conv_(x,h);
plotCompleto(t, convolucion);
