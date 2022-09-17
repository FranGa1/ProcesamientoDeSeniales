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
## @deftypefn {} {@var{retval} =} conv_ (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@FRANS-NOTEBOOK>
## Created: 2022-09-13

function retval = conv_ (x1, x2)
  conv1 = conv(x1, x2);
  N = length(x1);
  
  retval = conv1(fix(N/2):end-fix((N+1)/2)); 
endfunction
