[x, fs] = audioread('./AnSyS2022_PU1_m/audio.wav');
canal1 = x(1:length(x),1);
canal2 = x(1:length(x), 2);

y1 = sistema_ej_2(canal1);
y1_filtrada = filtro_dos_ramas(y1);

y2 = sistema_ej_2(canal2);
y2_filtrada = filtro_dos_ramas(y2);

y_filtrada = [y1_filtrada, y2_filtrada];

sound(y_filtrada, fs)