clear all;
clc;

while 1
    pt = input("Ingrese el numero de ejercicio:");
    inc = input("Ingrese el numero inciso:");

    switch pt
        case 1

            switch inc
                case 1
                    close all;
                    run ejercicio_1_1;
                case 2
                    close all;
                    run ejercicio1_2_RespuestasImpulsional;
                    run ejercicio1_2_RespuestasEnFrecuencia;
                case 3
                    close all;
                    run ejercicio_1_3_RespuestasImpulsional;
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
