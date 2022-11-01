clear
addpath("../funciones");

dt = 1/100;
t = -3:dt:3;

t1 = trianguloSVIC(t+1);
t2 = trianguloSVIC(t-1);
c = cajonSVIC(t/4);

func = t1 + t2 + c;

plotCompleto(t, func);