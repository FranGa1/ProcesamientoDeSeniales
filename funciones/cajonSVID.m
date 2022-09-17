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
## @deftypefn {} {@var{retval} =} cajonSVIC (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@DESKTOP-IGR40E0>
## Created: 2022-09-02

function retval = cajonSVID (n, N, N0)
  i = 1;
  total_valores = length(n);
  while (i <= total_valores) && (n(i) != N0)
    i+=1;
  endwhile
  y_cajon = zeros(total_valores);
  if (i <= total_valores)
    y_cajon(i-fix(N/2):i+fix(N/2)) = 1;
  endif
  retval = y_cajon;
endfunction
