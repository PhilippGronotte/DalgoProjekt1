% Author: Tarik (c) IHA @ Jade Hochschule applied licence see EOF 
% Version History:
% Ver. 0.01 initial create (TS) 29-Apr-2014 			 Initials (eg. TS)
%------------Your script starts here-------- 

clear;
close all;
clc;


% aus dem internet rausgezogenen variablen

[dateday,datemonth,tmax,tmin,chancerain,avewind,rainfall,snowfall,humidity,weekday] = getweatherxml();

%in der Funktion erstellten Variablen
figure_nr=figure;
ausgewaeltes_datum=1;
Durchschnitstemperatur=(tmax+tmin)./2;

%Erster plot der höchsten und Niedrigsten temperatur
subplot(2,1,1)
hold on
plot(tmin,'r')
title('Höchste und Niedrigste Temperatur in den nächsten 10 Tagen')
ylabel('Temperatur in °')
set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),weekday(5),weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})
plot(tmax)

%popupmenü für die plotmöglichkeiten
 uicontrol(figure_nr,'style','popupmenu','string', {'Höchste und Niedrigste Temperatur' 'Niedrigste Temperatur'...
    'Höchste Temperatur' 'Druchschnitstemperatur' 'Luftfeutigkeit' 'Regenwahrscheinlichkeit'...
    'Windgeschwindigkeit','Schneefallwahrscheinlichkeit'},'units', 'normalized', ...
    'Position', [0.12 -0.05 0.4 0.5],'tag','popupmenu',...
    'callback', {@wetterplots,tmax,tmin,avewind,humidity,chancerain,snowfall,figure_nr,weekday})

%Textfeld für die Tägliche Windgewschwindigkeit
avewind_text=sprintf('Die Windgeschwindigkeit am %i.%i beträgt %i kmh'...
                         ,dateday(ausgewaeltes_datum),datemonth(ausgewaeltes_datum),avewind(ausgewaeltes_datum));

avewind_Button=uicontrol(figure_nr, 'style', 'text','string', avewind_text,...
                           'units', 'normalized','Position', [0.12 0.24 0.5 0.03],'HorizontalAlignment','center');


%Textfeld für die Tägliche Regenwahrscheinlichkeit
chancerain_text=sprintf('Die Regenwahrscheinlichkeit am %i.%i beträgt %i %'...
                             ,dateday(ausgewaeltes_datum),datemonth(ausgewaeltes_datum),chancerain(ausgewaeltes_datum));

chancerain_Button=uicontrol(figure_nr, 'style', 'text','string', chancerain_text,...
                               'units', 'normalized','Position', [0.12 0.31 0.5 0.03],'HorizontalAlignment','center');

%Textfeld für die Tägliche Luftfeuschtigkeit
humidity_text=sprintf('Die Luftfeutigkeit am %i.%i beträgt %i %'...
                    ,dateday(ausgewaeltes_datum),datemonth(ausgewaeltes_datum),humidity(ausgewaeltes_datum));

humidity_Button=uicontrol(figure_nr, 'style', 'text','string', humidity_text,...
                     'units', 'normalized','Position', [0.12 0.17 0.5 0.03],'HorizontalAlignment','center');

%Textfeld für die Tägliche Durschnitstemperatur
Durchschnitstemperatur_text=sprintf('Die Durchschnitstemperatur am %i.%i beträgt %i°'...
                            ,dateday(ausgewaeltes_datum),datemonth(ausgewaeltes_datum),Durchschnitstemperatur(ausgewaeltes_datum));

Durchschnitstemperatur_Button=uicontrol(figure_nr, 'style', 'text','string', Durchschnitstemperatur_text,...
                              'units', 'normalized','Position', [0.12 0.1 0.5 0.03],'HorizontalAlignment','center');

%Textfeld für die Tägliche Schneefallwahrscheinlichkeit

snowfall_text=sprintf('Die Schneefallwahrscheinlichkeit am %i.%i beträgt %i %'...
                                 ,dateday(ausgewaeltes_datum),datemonth(ausgewaeltes_datum),snowfall(ausgewaeltes_datum));

snowfall_Button=uicontrol(figure_nr, 'style', 'text','string', snowfall_text,...
                                    'units', 'normalized','Position', [0.12 0.03 0.5 0.03],'HorizontalAlignment','center');

% radiobutten gruppe
buttongroup=uibuttongroup('Position',[0.12 0.49 0.8 0.05],'SelectionChangeFcn',...
            {@Tagesanzeige,Durchschnitstemperatur,avewind,humidity,chancerain,...
            snowfall,figure_nr,dateday,datemonth,chancerain_Button,avewind_Button,...
            humidity_Button,Durchschnitstemperatur_Button,snowfall_Button});
    
%radiobuttens für die radiobuttengruppe
uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0 0.05 0.03 1],...
    'parent',buttongroup,'Tag','1')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.103 0.05 0.03 1],...
    'parent',buttongroup,'Tag','2')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.213 0.05 0.03 1],...
    'parent',buttongroup,'Tag','3')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.323 0.05 0.03 1],...
    'parent',buttongroup,'Tag','4')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.427 0.05 0.03 1],...
    'parent',buttongroup,'Tag','5')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.54 0.05 0.03 1],...
    'parent',buttongroup,'Tag','6')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.645 0.05 0.03 1],...
    'parent',buttongroup,'Tag','7')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.755 0.05 0.03 1],...
    'parent',buttongroup,'Tag','8')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.863 0.05 0.03 1],...
    'parent',buttongroup,'Tag','9')

uicontrol(figure_nr, 'style', 'radiobutton',...
    'units', 'normalized','Position', [0.975 0.05 0.03 1],...
    'parent',buttongroup,'Tag','10')

%--------------------Licence ---------------------------------------------
% Copyright (c) <2014> Tarik
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