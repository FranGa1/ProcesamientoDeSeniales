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
## @deftypefn {} {@var{retval} =} TFTD (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@CENTRAL-DE-FRAN>
## Created: 2022-11-08

function [s, X] = TFTD (n,x)
  # Cálculo de su TFTD
  ds = 0.00001;
  s = [-1/2:ds:1/2];
  X = zeros(size(s));
  for k = 1:length(s)
    X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
  endfor
endfunction
