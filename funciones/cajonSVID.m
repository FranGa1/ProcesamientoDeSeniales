## Copyright (C) 2022 franc
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} cajon (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@DESKTOP-IGR40E0>
## Created: 2022-08-27

function y = cajonSVID (t, t0, t_evaluar=[])
  # Si se quiere evaluar al cajon en un valor
  if (isempty(t_evaluar))
    # Se obtiene el conjunto de valores en y del cajon a partir del escalon
    # a partir
    escalon1 = t>=(1/2+t0);
    escalon2 = t>=(-1/2+t0);
    y = escalon2-escalon1;
  else
    if ((t_evaluar-t0) >= (-1/2)) && ((t_evaluar-t0) <= (1/2))
      y = 1;
    else
      y = 0;
    endif
  endif
endfunction
