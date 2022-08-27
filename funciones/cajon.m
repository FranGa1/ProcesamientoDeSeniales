clear all;
close all;
clc;

addpath('D:\6to_Introduccion_al_Procesamiento_de_Seniales')

dt = 1e-2;
t = -1:dt:1;
x = cajon(t);

plotCompleto([-1 1 -0.5 1.5], 't', 'Amplitud', 'Grafico Cajon', 25, 'm*-', 1, t, x);

