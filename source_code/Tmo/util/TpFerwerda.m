function val=TpFerwerda(x)
%
%        val=TpFerwerda(x)
%
%
%       The gamma function used in Ferwerda TMO for Scotopic levels
%
%       Input:
%           -x: a value
%
%       Output:
%           -val: application of the gamma function
%
% 
%     Copyright (C) 2010 Francesco Banterle
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%

x2 = log10(x);

if(x2 <= -2.6)
    val = -0.72;
else
    if(x2 >= 1.9)
        val = x2 - 1.255;
    else
        val = (0.249 * x2 + 0.65)^2.7 - 0.72;
    end
end

val = 10^val;

end
