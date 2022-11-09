## Copyright (C) 2022 franc

## Author: franc <franc@DESKTOP-IGR40E0>
## Created: 2022-08-27

% plotCompleto(lim_ejes,eje_x,eje_y,titulo,tam_letra,col,grosor,t,x)
%
% Realiza un gr´afico de una SVIC de manera adecuada.
% Ejemplo de uso:
% t = -40:0.01:40;
% xa = -2*sin(-0.2*t + 5/3*pi);
% plotCompleto([t(1) t(end) -2 2],'t','f(t)','Se~nal f(t)',20,'r*-',1.5,t,xa)

function plotCompleto(t, x, titulo='Señal' , eje_x='t', eje_y='f(t)', tam_letra=15, col='r', grosor=1.5, lim_ejes=[t(1) t(end) min(x)-1 max(x)+1])
  % Realiza un gr´afico de una SVIC de manera adecuada.
  % Ejemplo de uso:
  % t = -40:0.01:40;
  % xa = -2*sin(-0.2*t + 5/3*pi);
  % plotCompleto([t(1) t(end) -2 2],'t','f(t)','Se~nal f(t)',20,'r*-',1.5,t,xa

  figure('units', 'normalized', 'outerposition', [0 0 1 1]); % Creo y maximizo la figura.
  plot(t,x,col,'Linewidth',grosor); % Grafico. Color (y marcador) y grosor.
  axis(lim_ejes); grid on; % Limites de los ejes. Grilla.
  set(gca,'FontSize', tam_letra); % Tamanio de letra para la leyenda y ejes.
  xlabel(eje_x,'Interpreter','Latex'); % Nombro el eje x.
  ylabel(eje_y,'Interpreter','Latex'); % Nombro el eje y.
  title(titulo); % Coloco t´ıtulo para el gr´afico.
  % Nota: Lo de 'interpreter', 'Latex' es opcional...solo modifica la
  % fuente. Pueden googlear Latex como editor de textos...
end

