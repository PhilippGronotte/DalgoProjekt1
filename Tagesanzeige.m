function [] = Tagesanzeige(handle, event,rainfall,tmin,tmax,Windgewschwindigkeit,Luftfeutigkeit,...
    Regenwahrscheinlichkeit,Schneefallwahrscheinlichkeit,figure_nr,Tag,Monat,Regenwahrscheinlichkeit_Button,...
    Windgeschwindigkeit_Button,Luftfeutigkeit_Button,rainfall_Button,Schneefallwahrscheinlichkeit_Button,Tmax,Tmin,Datum)
% Author: TS (c) IHA @ Jade Hochschule applied licence see EOF 
% Version History:
% Ver. 0.01 initial create (TS) 06-May-2014  Initials (eg. TS)

%------------Your function implementation here--------------------------- 

% auslessen des gewählten radiobuttens
ausgewaeltes_datum = str2double(get(get(handle, 'SelectedObject'),'Tag'));


% aktualisieren Texte die in die Textfelder eingetragen werden sollen
Windgewschwindigkeit_text=sprintf('Die Windgeschwindigkeit am %i.%i beträgt %i kmh'...
                          ,Tag(ausgewaeltes_datum),Monat(ausgewaeltes_datum),...
                          Windgewschwindigkeit(ausgewaeltes_datum));

Regenwahrscheinlichkeit_text=sprintf('Die Regenwahrscheinlichkeit am %i.%i beträgt %i %%'...
                             ,Tag(ausgewaeltes_datum),Monat(ausgewaeltes_datum),...
                             Regenwahrscheinlichkeit(ausgewaeltes_datum));
 
Luftfeutigkeit_text=sprintf('Die Luftfeutigkeit am %i.%i beträgt %i %%'...
                   ,Tag(ausgewaeltes_datum),Monat(ausgewaeltes_datum),...
                   Luftfeutigkeit(ausgewaeltes_datum));

rainfall_text=sprintf('Die Niederschlagsmenge am %i.%i beträgt %i mm'...
                            ,Tag(ausgewaeltes_datum),Monat(ausgewaeltes_datum),...
                            rainfall(ausgewaeltes_datum));

Schneefallwahrscheinlichkeit_text=sprintf('Die Schneefallwahrscheinlichkeit am %i.%i beträgt %i%'...
                                  ,Tag(ausgewaeltes_datum),Monat(ausgewaeltes_datum),...
                                  Schneefallwahrscheinlichkeit(ausgewaeltes_datum));

Tmax_text=sprintf(' Max: %i °C' ,tmax(ausgewaeltes_datum));

Tmin_text=sprintf(' Min: %i °C' ,tmin(ausgewaeltes_datum));
 
Datum_text=sprintf('%i.%i',Tag(ausgewaeltes_datum),Monat(ausgewaeltes_datum));

% aktualisieren des Textfelder
set(Regenwahrscheinlichkeit_Button,'string',Regenwahrscheinlichkeit_text)
set(Windgeschwindigkeit_Button,'string',Windgewschwindigkeit_text)
set(Luftfeutigkeit_Button,'string',Luftfeutigkeit_text)
set(rainfall_Button,'string',rainfall_text)
set(Schneefallwahrscheinlichkeit_Button,'string',Schneefallwahrscheinlichkeit_text)
set(Tmax,'string',Tmax_text)
set(Tmin,'string',Tmin_text)
set(Datum,'string',Datum_text)


%Farbänderung der GUI in Abhängigkeit der Regenwahrscheinlichkeit
% if Regenwahrscheinlichkeit(ausgewaeltes_datum)>50
%     set(figure_nr,'Color',[0.1 0.25 0.29])
% elseif Regenwahrscheinlichkeit(ausgewaeltes_datum)<50
%     set(figure_nr,'Color',[0.4 0.6 0.9]) 
% end    


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