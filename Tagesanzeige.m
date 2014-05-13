function [] = Tagesanzeige(handle, event, rainfall, tmin, tmax, Windgeschwindigkeit,...
    Luftfeuchtigkeit, Regenwahrscheinlichkeit, Schneefallwahrscheinlichkeit,figure_nr,...
    Tag, Monat, monthname, Regenwahrscheinlichkeit_Button, Windgeschwindigkeit_Button,...
    Luftfeuchtigkeit_Button, rainfall_Button, Schneefallwahrscheinlichkeit_Button,...
    Tmax, Tmin, Datum,axes_feld)

%------------Your function implementation here--------------------------- 

% Auslessen des gewählten radiobuttens
date = str2double(get(get(handle, 'SelectedObject'),'Tag'));
Grafik_einbinden(rainfall,tmin,tmax,Windgeschwindigkeit,Luftfeuchtigkeit,Regenwahrscheinlichkeit,...
                 Schneefallwahrscheinlichkeit,axes_feld)

% Aktualisieren der Texte die in die Textfelder eingetragen werden sollen
Windgeschwindigkeit_text=sprintf('Die Windgeschwindigkeit am %i.%i beträgt %i kmh'...
                          ,Tag(date),Monat(date),...
                          Windgeschwindigkeit(date));

Regenwahrscheinlichkeit_text=sprintf('Die Regenwahrscheinlichkeit am %i.%i beträgt %i %%'...
                             ,Tag(date),Monat(date),...
                             Regenwahrscheinlichkeit(date));
 
Luftfeuchtigkeit_text=sprintf('Die Luftfeuchtigkeit am %i.%i beträgt %i %%'...
                   ,Tag(date),Monat(date),...
                   Luftfeuchtigkeit(date));

rainfall_text=sprintf('Die Niederschlagsmenge am %i.%i beträgt %i mm'...
                            ,Tag(date),Monat(date),...
                            rainfall(date));

Schneefallwahrscheinlichkeit_text=sprintf('Die Neuschneemenge am %i.%i beträgt %i cm'...
                                  ,Tag(date),Monat(date),...
                                  Schneefallwahrscheinlichkeit(date));

Tmax_text=sprintf(' Max: %i °C' ,tmax(date));

Tmin_text=sprintf(' Min: %i °C' ,tmin(date));
 
Datum_text=sprintf('%i.%s',Tag(date),monthname(date,1:3));

% Aktualisieren des Textfelder mittels set
set(Regenwahrscheinlichkeit_Button,'string',Regenwahrscheinlichkeit_text)
set(Windgeschwindigkeit_Button,'string',Windgeschwindigkeit_text)
set(Luftfeuchtigkeit_Button,'string',Luftfeuchtigkeit_text)
set(rainfall_Button,'string',rainfall_text)
set(Schneefallwahrscheinlichkeit_Button,'string',Schneefallwahrscheinlichkeit_text)
set(Tmax,'string',Tmax_text)
set(Tmin,'string',Tmin_text)
set(Datum,'string',Datum_text)



