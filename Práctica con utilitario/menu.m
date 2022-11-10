clear all;
clc;
close all;
play = 1;

while play
    pt = input("Ingrese el numero de ejercicio:");

    if (pt != 0)
      inc = input("Ingrese el numero inciso:");
    endif

    switch pt
        case 0
          close all;
          play = 0;

        case 1

            switch inc
                case 1
                    close all;
                    run ejercicio_1_1.m;
                case 2
                    close all;
                    run ejercicio1_2_RespuestasImpulsionales;
                    run ejercicio1_2_RespuestasEnFrecuencia;
                case 3
                    close all;
                    run ejercicio_1_3_RespuestasImpulsionales;
                    run ejercicio_1_3_RespuestasEnFrecuencia;
                case 4
                    close all;
                    run ejercicio_1_4;
                case 5
                    close all;
                    run ejercicio_1_5;
                otherwise
                    close all;
                    disp("\n#### No existe el inciso ####\n");
            end

        case 2

            switch inc
                case 1
                    close all;
                    run ej2_1;
                case 2
                    close all;
                    run ej2_2;
                case 3
                    close all;
                    run ej2_3;
                case 4
                    close all;
                    run ej2_4;
                case 5
                    close all;
                    run ej2_5;
                otherwise
                    close all;
                    disp("\n#### No existe el inciso ####\n");
            end

        otherwise
            close all;
            disp("\n#### No existe el ejercicio ####\n");
    end
end
