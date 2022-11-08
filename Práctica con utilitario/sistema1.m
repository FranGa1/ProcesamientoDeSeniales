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
## @deftypefn {} {@var{retval} =} sistema1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@FRANS-NOTEBOOK>
## Created: 2022-11-08

function y = sistema1 (n, x)
  N = length(n);
  y(1) = (1/2)*x(1);
  
  for k=2:N
    y(k) = (1/2)*x(k) + (1/2)*x(k-1);
  endfor
  
endfunction
