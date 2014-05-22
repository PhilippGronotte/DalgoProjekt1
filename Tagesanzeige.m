function [] = Tagesanzeige(handle, event, rainfall, tmin, tmax, Windgeschwindigkeit,...
    Luftfeuchtigkeit, Regenwahrscheinlichkeit, Schneefallwahrscheinlichkeit,figure_nr,...
    Tag, Monat, monthname, Regenwahrscheinlichkeit_Button, Windgeschwindigkeit_Button,...
    Luftfeuchtigkeit_Button, rainfall_Button, Schneefallwahrscheinlichkeit_Button,...
    Tmax_Button, Tmin_Button, Datum, Wettervorhersage,axes_feld,icon)

%------------Your function implementation here--------------------------- 

% Auslessen des gewählten radiobuttens
date_actual = str2double(get(get(handle, 'SelectedObject'),'Tag'));


icon_german = translate(icon,date_actual);
%--------------------------------------------------------------------------

% Aktualisieren der Texte die in die Textfelder eingetragen werden sollen
Windgeschwindigkeit_text=sprintf('Windgeschwindigkeit: %i kmh',...
        Windgeschwindigkeit(date_actual));

Regenwahrscheinlichkeit_text=sprintf('Regenwahrscheinlichkeit: %i %%',...
        Regenwahrscheinlichkeit(date_actual));
 
Luftfeuchtigkeit_text=sprintf('Luftfeuchtigkeit: %i %%',...
        Luftfeuchtigkeit(date_actual));

rainfall_text=sprintf('Niederschlagsmenge: %i mm',...
        rainfall(date_actual));

Schneefallwahrscheinlichkeit_text=sprintf('Neuschnee: %i cm',...
        Schneefallwahrscheinlichkeit(date_actual));


Tmax_text=sprintf(' Max: %i °C' ,tmax(date_actual));

Tmin_text=sprintf(' Min: %i °C' ,tmin(date_actual));
 
Datum_text=sprintf('%i.%s',Tag(date_actual),monthname(date_actual,1:3));

Wettervorhersage_text=sprintf('%s',icon_german(1:22));

%--------------------------------------------------------------------------
% Aktualisieren des Textfelder mittels set
set(Regenwahrscheinlichkeit_Button,'string',Regenwahrscheinlichkeit_text)
set(Windgeschwindigkeit_Button,'string',Windgeschwindigkeit_text)
set(Luftfeuchtigkeit_Button,'string',Luftfeuchtigkeit_text)
set(rainfall_Button,'string',rainfall_text)
set(Schneefallwahrscheinlichkeit_Button,'string',Schneefallwahrscheinlichkeit_text)
set(Tmax_Button,'string',Tmax_text)
set(Tmin_Button,'string',Tmin_text)
set(Datum,'string',Datum_text)
set(Wettervorhersage,'string',Wettervorhersage_text)

%--------------------------------------------------------------------------

Grafik_einbinden(icon,axes_feld,date_actual,figure_nr)

