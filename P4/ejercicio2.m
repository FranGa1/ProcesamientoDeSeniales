addpath("./funciones");
clear

Ts = 1/100;
t = -10:Ts:10-Ts;

x = cajonSVIC(t-2);

plotCompleto(t,x)
xlabel('Time (seconds)')
ylabel('Amplitude')

y = fft(x);
fs = 1/Ts;

##f = (0:length(y)-1)*fs/length(y);
##
##plotCompleto(f,abs(y))
##xlabel('Frequency (Hz)')
##ylabel('Magnitude')
##title('Magnitude')

n = length(x);
fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);
plotCompleto(fshift,abs(yshift))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
