function [] = Grafik_einbinden(tmin,tmax,axes_feld)
% function include a grafik
%------------------------------------------------------------------------ 
% Author: TS (c) IHA @ Jade Hochschule applied licence see EOF 
% Version History:
% Ver. 0.01 initial create (TS) 13-May-2014  Initials (eg. TS)

%------------Your function implementation here--------------------------- 
Tdurchnit=(tmin+tmax)/2;
% W�hlt Bild in abh�ngigkeit zur temperatur aus
if Tdurchnit >= 30
    Bild='Bild.png';
elseif Tdurchnit < 30 & Tdurchnit >= 20
    Bild='Bild.png';
elseif Tdurchnit < 20 & Tdurchnit >= 10
    Bild='Bild.png';
elseif Tdurchnit < 10 & Tdurchnit >= 0
    Bild='Bild.png';
else
    Bild='Bild.png' ;   
end

%--------------------------------------------------------------------------

% Bindet Bild in die figure ein
axes(axes_feld)
pressPic = imread(Bild);
image([0 1],[0 1],pressPic);
axis equal;
axis off;


%--------------------Licence ---------------------------------------------
% Copyright (c) <2014> TS
% Institute for Hearing Technology and Audiology
% Jade University of Applied Sciences 
% Permission is hereby granted, free of charge, to any person obtaining 
% a copy of this software and associated documentation files 
% (the "Software"), to deal in the Software without restriction, including 
% without limitation the rights to use, copy, modify, merge, publish, 
% distribute, sublicense, and/or sell copies of the Software, and to
% permit persons to whom the Software is furnished to do so, subject
% to the following conditions:
% The above copyright notice and this permission notice shall be included 
% in all copies or substantial portions of the Software.
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
% EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
% OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
% IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
% CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
% TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
% SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.