function [icon_german] = translate(icon,date_actual)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=size(icon);
a=a(2);
icon_german = char(icon(date_actual,1:a));
icon_german(length(icon_german)+1:22) = ' ';

if strcmp(icon_german, 'chancerain            ')
    icon_german = 'Regen möglich         ';
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
    icon_german = 'bewölkt               ';
elseif strcmp(icon_german, 'tstorms               ')
    icon_german = 'Gewitter              ';
elseif strcmp(icon_german, 'flurries              ')
    icon_german = 'Schneegestöber        ';
elseif strcmp(icon_german, 'chancesnow            ')
    icon_german = 'Schnee möglich        ';
elseif strcmp(icon_german, 'chancesleet           ')
    icon_german = 'Schneeregen möglich   ';          
elseif strcmp(icon_german, 'mostlycloudy          ')
    icon_german = 'überwiegend bewölkt   ';             
elseif strcmp(icon_german, 'mostlysunny           ')
    icon_german = 'überwiegend sonnig    ';             
elseif strcmp(icon_german, 'partlycloudy          ')
    icon_german = 'teilweise bewölkt     ';             
elseif strcmp(icon_german, 'partlysunny           ')
    icon_german = 'teilweise sonnig      ';             
elseif strcmp(icon_german, 'chancetstorms         ')
    icon_german = 'Gewitter möglich      ';             
elseif strcmp(icon_german, 'chanceflurries        ')
    icon_german = 'Schneegestöber möglich'; 
else
    icon_german = 'Keine Angaben ';
end



end

