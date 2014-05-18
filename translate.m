function [icon_german] = translate(icon,date_actual)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=size(icon);
a=a(2);
icon_german = char(icon(date_actual,1:a));
icon_german(length(icon_german)+1:14) = ' ';

if strcmp(icon_german, 'chancerain    ')
    icon_german = 'Regen mögl.   ';
elseif strcmp(icon_german,'fog           ')
    icon_german = 'Nebel         ';
elseif strcmp(icon_german, 'hazy          ')
    icon_german = 'dunstig       ';
elseif strcmp(icon_german, 'rain          ')
    icon_german = 'Regen         ';
elseif strcmp(icon_german, 'snow          ')
    icon_german='Schnee        ';
elseif strcmp(icon_german, 'sleet         ')
    icon_german = 'Schneeregen   ';
elseif strcmp(icon_german, 'clear         ')
    icon_german = 'klar          ';
elseif strcmp(icon_german, 'sunny         ')
    icon_german = 'sonnig        ';
elseif strcmp(icon_german, 'cloudy        ')
    icon_german = 'bewölkt       ';
elseif strcmp(icon_german, 'tstorms       ')
    icon_german = 'Gewitter      ';
elseif strcmp(icon_german, 'flurries      ')
    icon_german = 'Schneegestöber';
elseif strcmp(icon_german, 'chancesnow    ')
    icon_german = 'Schnee mögl.  ';
elseif strcmp(icon_german, 'chancesleet   ')
    icon_german = 'Schneeregen mö';
elseif strcmp(icon_german, 'mostlycloudy  ')
    icon_german = 'überwiegend be';
elseif strcmp(icon_german, 'mostlysunny   ')
    icon_german = 'überwiegend so';
elseif strcmp(icon_german, 'partlycloudy  ')
    icon_german = 'teilweise bewö';
elseif strcmp(icon_german, 'partlysunny  ')
    icon_german = 'teilweise sonn';
elseif strcmp(icon_german, 'chancetstorms ')
    icon_german = 'Gewitter mögl.';
elseif strcmp(icon_german, 'chanceflurries')
    icon_german = 'Schneegestöber';
else
    icon_german = 'Keine Angaben ';
end


end

