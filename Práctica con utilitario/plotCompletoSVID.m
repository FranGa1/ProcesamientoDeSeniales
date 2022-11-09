function plotCompletoSVID(n, x,titulo='Senial', eje_x='n',eje_y='x[n]',tam_letra=18,col='r',grosor=0.2, lim_ejes=[n(1) n(end) min(x)-1 max(x)+1])
  % plotCompleto(lim_ejes,eje_x,eje_y,titulo,tam_letra,col,grosor,t,x)
  %
  % Realiza un gr´afico de una SVIC de manera adecuada.
  % Ejemplo de uso:
  % t = -40:0.01:40;
  % xa = -2*sin(-0.2*t + 5/3*pi);
  % plotCompleto([t(1) t(end) -2 2],'t','f(t)','Se~nal f(t)',20,'r*-',1.5,t,xa)
  figure('units','normalized','outerposition',[0 0 1 1]);
  stem(n, x, col, 'Linewidth',grosor)
  axis(lim_ejes); grid on;
  set(gca,'FontSize', tam_letra);
  xlabel(eje_x,'Interpreter','Latex');
  ylabel(eje_y,'Interpreter','Latex');
  title(titulo);
  % Nota: Lo de 'interpreter', 'Latex' es opcional...s´olo modifica la
  % fuente. Pueden googlear Latex como editor de textos...
endfunction
