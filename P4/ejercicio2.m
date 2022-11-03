addpath("./funciones");
clear

Ts = 1/100;
t = -10:Ts:10-Ts;

<<<<<<< HEAD
x = cajonSVIC(t);
=======
x = cajonSVIC(t-2);
>>>>>>> 6e93782e0a82c8b42a887cfbded6cb7f111b1bdf

plotCompleto(t,x)
xlabel('Time (seconds)')
ylabel('Amplitude')

y = fft(x) * Ts;
fs = 1/Ts;

f = (0:length(y)-1)*fs/length(y);

plotCompleto(f,abs(y))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Magnitude')

n = length(x);
fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);
plotCompleto(fshift,abs(yshift))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
