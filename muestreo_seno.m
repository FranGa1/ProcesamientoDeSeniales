addpath("./funciones")

k = 0; f0 = 100+k*1200; Ts = 1/1200;
n = [0:1:12]; t = [0:Ts/1000:12*Ts];
xa = sin(2*pi*f0*t);
x = sin(2*pi*f0*n*Ts);
x2 = sin(pi*n/6);
figure, plot(t, xa, n*Ts,x ,'o',n*Ts,x2,'.r')

Ts = 1/5000; f0 = 500; n = [0:1:100];
x = sin(2*pi*f0*n*Ts);
figure, plot(n, x, '.-')

Ts = 1/5000; f0 = 500; n = [0:1:20];
x = sin(2*pi*f0*n*Ts);
t = [0:Ts/200:Ts*20]; yZOH = zeros(size(t));
figure, hold on, plot(n*Ts,x,'o');
for k = 1:length(n)
xrp = x(k).*((t>= n(k)*Ts) & (t < (n(k)+1)*Ts));
plot(t,xrp,'k--');
yZOH = yZOH+xrp;
end
plot(t,yZOH,'r'), hold off;
