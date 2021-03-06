%Funktion zum �bersetzen der englischen Wetterstrings ins Deutsche
function [icon_german] = translate(icon,date_actual)
a=size(icon);
a=a(2);
icon_german = char(icon(date_actual,1:a));
icon_german(length(icon_german)+1:22) = ' ';

if strcmp(icon_german, 'chancerain            ')
    icon_german = 'Regen m�glich         ';
elseif strcmp(icon_german, 'fog                   ')
    icon_german = 'Nebel                 ';
elseif strcmp(icon_german, 'hazy                  ')
    icon_german = 'dunstig               ';
elseif strcmp(icon_german, 'rain                  ') 
    icon_german = 'Regen                 ';
elseif strcmp(icon_german, 'snow                  ')
    icon_german='Schnee                  ';
elseif strcmp(icon_german, 'sleet                 ')
    icon_german = 'Schneeregen           ';
elseif strcmp(icon_german, 'clear                 ')
    icon_german = 'klar                  ';
elseif strcmp(icon_german, 'sunny                 ')
    icon_german = 'sonnig                ';
elseif strcmp(icon_german, 'cloudy                ')
    icon_german = 'bew�lkt               ';
elseif strcmp(icon_german, 'tstorms               ')
    icon_german = 'Gewitter              ';
elseif strcmp(icon_german, 'flurries              ')
    icon_german = 'Schneegest�ber        ';
elseif strcmp(icon_german, 'chancesnow            ')
    icon_german = 'Schnee m�glich        ';
elseif strcmp(icon_german, 'chancesleet           ')
    icon_german = 'Schneeregen m�glich   ';          
elseif strcmp(icon_german, 'mostlycloudy          ')
    icon_german = '�berwiegend bew�lkt   ';             
elseif strcmp(icon_german, 'mostlysunny           ')
    icon_german = '�berwiegend sonnig    ';             
elseif strcmp(icon_german, 'partlycloudy          ')
    icon_german = 'teilweise bew�lkt     ';             
elseif strcmp(icon_german, 'partlysunny           ')
    icon_german = 'teilweise sonnig      ';             
elseif strcmp(icon_german, 'chancetstorms         ')
    icon_german = 'Gewitter m�glich      ';             
elseif strcmp(icon_german, 'chanceflurries        ')
    icon_german = 'Schneegest�ber m�glich'; 
else
    icon_german = 'Keine Angaben ';
end



end

