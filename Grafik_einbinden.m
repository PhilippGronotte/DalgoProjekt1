function [] = Grafik_einbinden(icon,axes_feld,Tag,figure_nr)
% function include a grafik
%------------------------------------------------------------------------ 
% Author: TS (c) IHA @ Jade Hochschule applied licence see EOF 
% Version History:
% Ver. 0.01 initial create (TS) 13-May-2014  Initials (eg. TS)

%------------Your function implementation here----------------------------- 

a=size(icon);
a=a(2);
icon_switch = char(icon(Tag,1:a));
icon_switch(length(icon_switch)+1:14) = ' ';
%--------------------------------------------------------------------------
% Wählt Bild in abhängigkeit zur temperatur aus
if strcmp(icon_switch, 'clear         ')|| strcmp(icon_switch, 'sunny         ')
    Bild='flat_colorful\png\sunny.png';
elseif strcmp(icon_switch, 'partlycloudy  ') || strcmp(icon_switch, 'partlysunny   ')
   Bild='flat_colorful\png\partlycloudy.png';
elseif strcmp(icon_switch,'flurries      ') || strcmp(icon_switch , 'chanceflurries')
   Bild='flat_colorful\png\flurries.png';
elseif strcmp(icon_switch, 'chancerain    ')
   Bild='flat_colorful\png\chancerain.png';
elseif strcmp(icon_switch, 'sleet         ') || strcmp(icon_switch, 'chancesleet   ')
   Bild='flat_colorful\png\sleet.png';
elseif strcmp(icon_switch, 'chancesnow    ')
   Bild='flat_colorful\png\chancesnow.png';
elseif strcmp(icon_switch, 'chancetstorm  ')
   Bild='flat_colorful\png\chancetstorms.png';
elseif strcmp(icon_switch, 'cloudy        ')
   Bild='flat_colorful\png\cloudy.png';
elseif strcmp(icon_switch, 'fog           ')
   Bild='flat_colorful\png\fog.png';
elseif strcmp(icon_switch, 'hazy          ')
   Bild='flat_colorful\png\hazy.png';
elseif strcmp(icon_switch, 'mostlycloudy  ')
   Bild='flat_colorful\png\mostlycloudy.png';
elseif strcmp(icon_switch, 'mostlysunny   ')
   Bild='flat_colorful\png\mostlysunny.png';
elseif strcmp(icon_switch ,'rain          ')
   Bild='flat_colorful\png\rain.png';
elseif strcmp(icon_switch ,'snow          ')
   Bild='flat_colorful\png\snow.png';
else 
   Bild='flat_colorful\png\NaN.png';

end

%--------------------------------------------------------------------------
colorabs=get(figure_nr, 'Color');

axes(axes_feld)
pressPic = imread(Bild); 
pressPic(pressPic == 0) = round(colorabs(1,1)*255);
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