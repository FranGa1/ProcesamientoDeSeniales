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
## @deftypefn {} {@var{retval} =} deltaKr (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@FRANS-NOTEBOOK>
## Created: 2022-11-01

function retval = deltaK (n)
  r = zeros(length(n), 1)';
  for i=1:length(n) 
    if (n(i) == 0)
      r(i) = 1;
    else
      r(i) = 0;
    endif
  endfor
  retval = r;
endfunction
