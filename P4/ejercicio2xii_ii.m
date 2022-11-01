clear
addpath("../funciones");

dt = 1/100;
t = -3:dt:3;

f1 = t.^2;
f2 = escalonSVIC(t-1);
f3 = cajonSVIC(t-1/2);

func = f1 .* f3 + f2;

plotCompleto(t, func);