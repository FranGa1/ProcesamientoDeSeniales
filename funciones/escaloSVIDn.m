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
## @deftypefn {} {@var{retval} =} escalon (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@DESKTOP-IGR40E0>
## Created: 2022-08-27

function u = escalonSVID (t, t0, t_evaluar=[])
  # Si se quiere evaluar al escalon en un valor
  if (isempty(t_evaluar))
    u = t>=t0;
  else
    if (t_evaluar-t0 >= 0)
      u = 1;
    else
      u = 0;
    endif
  endif
endfunction
