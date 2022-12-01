[x, fs] = audioread('./AnSyS2022_PU1_m/audio.wav');

canal1 = x(1:length(x),1);
canal2 = x(1:length(x), 2);

figure
plot(canal1, 'r')
xlabel('n'); % Nombro el eje x.
ylabel('canal_1[n]'); % Nombro el eje y.
title('Primer canal de x[n]'); % Coloco t´ıtulo para el gr´afico.

figure
plot(canal2)
xlabel('n'); % Nombro el eje x.
ylabel('canal_2[n]'); % Nombro el eje y.
title('Segundo canal de x[n]'); % Coloco t´ıtulo para el gr´afico.

figure
plot(x)
xlabel('n'); % Nombro el eje x.
ylabel('x[n]'); % Nombro el eje y.
title('Funci�n de entrada'); % Coloco t´ıtulo para el gr´afico.

y1 = sistema_ej_2(canal1);
y2 = sistema_ej_2(canal2);
y = [y1, y2];

figure
plot(y1, 'r')
xlabel('n'); % Nombro el eje x.
ylabel('canal_1y[n]'); % Nombro el eje y.
title('Primer canal de y[n]'); % Coloco t´ıtulo para el gr´afico.

figure
plot(y2)
xlabel('n'); % Nombro el eje x.
ylabel('canal_2y[n]'); % Nombro el eje y.
title('Segundo canal de y[n]'); % Coloco t´ıtulo para el gr´afico.

figure
plot(y)
xlabel('n'); % Nombro el eje x.
ylabel('ys[n]'); % Nombro el eje y.
title('Funci�n de salida'); % Coloco t´ıtulo para el gr´afico.

sound(y,fs);