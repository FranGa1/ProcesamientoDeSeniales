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
## @deftypefn {} {@var{retval} =} y_filtro (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: franc <franc@FRANS-NOTEBOOK>
## Created: 2022-11-10

function y = filtro_una_rama(x)
    N = length(x);
    y = zeros(N,1);
    for k=1:8820
        y(k) = x(k);
    end

    for k=8821:26460
        y(k) = x(k) - 0.45*x(k-8820);
    end

    for k=26461:N
        y(k) = x(k) - 0.45*x(k-8820) + 0.09*x(k-26460);
    end
end