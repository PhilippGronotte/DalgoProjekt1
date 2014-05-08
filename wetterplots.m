function [] = wetterplots(handle, event,Hoehst_temp,Niedrigst_temp,Windgewschwindigkeit,Luftfeutigkeit,...
    Regenwahrscheinlichkeit,Schneefallwahrscheinlichkeit,figure_nr,weekday)
% function is for the GUI.m

%------------------------------------------------------------------------ 

% Author: T.Siebe (c) IHA @ Jade Hochschule applied licence see EOF 
% Version History:
% Ver. 0.01 initial create (TS) 29-Apr-2014  Initials (eg. TS)

%------------Your function implementation here--------------------------- 

Druchschnitstemperatur=(Hoehst_temp+Niedrigst_temp)./2;

 
% liest denn aktuellen ausgewählte popup aus
 value = get(handle, 'value');

 %plot der Höchsten und Niedrigsten Temperatur
if value == 1
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Niedrigst_temp,'r')
    title('Höchste und Niedrigste Temperatur in den nächsten 10 Tagen')
    ylabel('Temperatur in °')
    hold on
    plot(Hoehst_temp)    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),weekday(5),...
    weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

 %plot der Niedriegsen Temperatur
elseif value == 2
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Niedrigst_temp,'r')
    title('Niedrigste Temperatur in den nächsten 10 Tagen')
    ylabel('Temperatur in °')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),...
    weekday(5),weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

 %plot der Höchsten Temperatur
elseif value == 3
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Hoehst_temp)
    title('Höchste Temperatur in den nächsten 10 Tagen')
    ylabel('Temperatur in °') 
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),...
    weekday(5),weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

 %plot der Druchschnitstemperatur
elseif value == 4
     figure(figure_nr)
     subplot(2,1,1)
     hold off
     plot(Druchschnitstemperatur)
     title('Druchschnitstemperatur in den nächsten 10 Tagen')
     ylabel('Temperatur in °')     
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),...
    weekday(5),weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

 %plot der Luftfeutigkeit
elseif value == 5
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Luftfeutigkeit)
    title('Luftfeutigkeit in den nächsten 10 Tagen')
    ylabel('Luftfeutigkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),weekday(5),...
    weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

 %plot der Regenwahrscheinlichkeit
elseif value == 6
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Regenwahrscheinlichkeit)
    title('Regenwahrscheinlichkeit in den nächsten 10 Tagen')
    ylabel('Regenwahrscheinlichkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),weekday(5),...
    weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

 %plot der Windgewschwindigkeit
elseif value == 7
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Windgewschwindigkeit)
    title('Windgewschwindigkeit in den nächsten 10 Tagen')
    ylabel('Windgewschwindigkeit in kmh')
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),weekday(5),...
    weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})

%plot der Schneefallwahrscheinlichkeit
else
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Schneefallwahrscheinlichkeit)
    title('Schneefallwahrscheinlichkeit in den nächsten 10 Tagen')
    ylabel('Schneefallwahrscheinlichkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1),weekday(2),weekday(3),weekday(4),weekday(5),...
    weekday(6),weekday(7),weekday(8),weekday(9),weekday(10),})
end




%--------------------Licence ---------------------------------------------
% Copyright (c) <2014> T.Siebe
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