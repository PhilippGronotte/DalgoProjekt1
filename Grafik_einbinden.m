%Funktion zum einbinden einer Grafik in die GUI

function [] = Grafik_einbinden(icon,axes_feld,Tag,figure_nr)

a=size(icon);
a=a(2);
icon_switch = char(icon(Tag,1:a));
icon_switch(length(icon_switch)+1:14) = ' ';
%--------------------------------------------------------------------------
% Wählt Wettericon über die vorher in der 'getweatherxml.m' ausgelesenen Wetterstrings aus
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
elseif strcmp(icon_switch, 'chancetstorms ')|| strcmp(icon_switch, 'tstorms       ')
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
%Hintergrundfarbe des Icons an die Hintergrundfarbe der Figure anpassen
colorabs=get(figure_nr, 'Color');

axes(axes_feld)
pressPic = imread(Bild); 
pressPic(pressPic == 0) = round(colorabs(1,1)*255);
image([0 1],[0 1],pressPic);
axis equal;
axis off;


