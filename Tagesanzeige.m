function [] = Tagesanzeige(handle, event, rainfall, tmin, tmax, Windgeschwindigkeit,...
    Luftfeuchtigkeit, Regenwahrscheinlichkeit, Schneefallwahrscheinlichkeit,figure_nr,...
    Tag, Monat, monthname, Regenwahrscheinlichkeit_Button, Windgeschwindigkeit_Button,...
    Luftfeuchtigkeit_Button, rainfall_Button, Schneefallwahrscheinlichkeit_Button,...
    Tmax_Button, Tmin_Button, Datum,axes_feld,icon)

%------------Your function implementation here--------------------------- 

% Auslessen des gewählten radiobuttens
date_actual = str2double(get(get(handle, 'SelectedObject'),'Tag'));

%--------------------------------------------------------------------------

% Aktualisieren der Texte die in die Textfelder eingetragen werden sollen
Windgeschwindigkeit_text=sprintf('Die Windgeschwindigkeit am %i.%i beträgt %i kmh'...
                          ,Tag(date_actual),Monat(date_actual),...
                          Windgeschwindigkeit(date_actual));

Regenwahrscheinlichkeit_text=sprintf('Die Regenwahrscheinlichkeit am %i.%i beträgt %i %%'...
                             ,Tag(date_actual),Monat(date_actual),...
                             Regenwahrscheinlichkeit(date_actual));
 
Luftfeuchtigkeit_text=sprintf('Die Luftfeuchtigkeit am %i.%i beträgt %i %%'...
                   ,Tag(date_actual),Monat(date_actual),...
                   Luftfeuchtigkeit(date_actual));

rainfall_text=sprintf('Die Niederschlagsmenge am %i.%i beträgt %i mm'...
                            ,Tag(date_actual),Monat(date_actual),...
                            rainfall(date_actual));

Schneefallwahrscheinlichkeit_text=sprintf('Die Neuschneemenge am %i.%i beträgt %i cm'...
                                  ,Tag(date_actual),Monat(date_actual),...
                                  Schneefallwahrscheinlichkeit(date_actual));

Tmax_text=sprintf(' Max: %i °C' ,tmax(date_actual));

Tmin_text=sprintf(' Min: %i °C' ,tmin(date_actual));
 
Datum_text=sprintf('%i.%s',Tag(date_actual),monthname(date_actual,1:3));

%--------------------------------------------------------------------------
% Erzeugung eines container für grafiken
axes_feld=axes('Parent',figure_nr,'Units','normalized',...
               'Position',[0 0.1 0.1 0.15]);
           

% Positionsänderung der Grafik
Grafik_einbinden(icon, axes_feld,date_actual,figure_nr)
axis equal;
axis off;



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

%--------------------------------------------------------------------------

Grafik_einbinden(icon,axes_feld,date_actual)

