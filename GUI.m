%------------Your script starts here-------- 

clear;
close all;
clc;

%--------------------------------------------------------------------------

% prompt = 'Bitte geben Sie eine deutsche Stadt Ihrer Wahl ein:';
% town = inputdlg(prompt);
% town = char(town{1,1});
town = 'Kiel';
[dateday,datemonth,tmax,tmin,chancerain,avewind,rainfall,snowfall,humidity,weekday,monthname,icon] = getweatherxml(town);
%--------------------------------------------------------------------------

%Erstellen einer Figure
figure_nr = figure('MenuBar','none','Color','w','Name','Wetteranzeige','NumberTitle','off');
set(figure_nr,'units','normalized','Position', [0 0 0.75 0.8],'Color',[0.6 0.6 0.6])

%Auslesen der Hintergrundfarbe der figure und in Variable Background_fig
%spreichern
background_fig = get(figure_nr,'color');
    
%Festlegen des ersten Datums
date_actual = 1;

%--------------------------------------------------------------------------
%Erster plot der h�chsten und niedrigsten Temperatur
subplot(2,1,1)
hold on
plot(tmin,'b')
title('H�chste und niedrigste Temperatur der n�chsten 10 Tage')
ylabel('Temperatur in �')
set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
    weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
    weekday(8,1:3),weekday(9,1:3),weekday(10,1:3),})
plot(tmax,'r')

%--------------------------------------------------------------------------

% erstellen einer Men�leiste
menu=uimenu(figure_nr,'Label','men�');
uimenu(menu,'Label','Schlie�en','callback','close all')

%--------------------------------------------------------------------------

%Popupmen� zur Auswahl der Grafik erstellen, die Funktion wetterplots3
%beinhaltet die einzelnen Dartsellungen
 uicontrol(figure_nr, 'style', 'popupmenu', 'string', {'H�chste und Niedrigste Temperatur'...
    'Niedrigste Temperatur' 'H�chste Temperatur' 'Niederschlagsmenge' 'Luftfeuchtigkeit'...
    'Regenwahrscheinlichkeit' 'Windgeschwindigkeit', 'Schneefallwahrscheinlichkeit'},...
    'units', 'normalized', 'Position', [0.12 -0.05 0.4 0.5], 'tag', 'popupmenu',...
    'callback', {@wetterplots,tmax,tmin,avewind,humidity,chancerain,snowfall,figure_nr,weekday,rainfall})

%--------------------------------------------------------------------------
%Textfeld f�r das gew�hlte Datum erstellen

Datum_text=sprintf('%i. %s',dateday(date_actual),monthname(date_actual,(1:3)));
  
Datum=uicontrol(figure_nr, 'style', 'text','string', Datum_text, 'units',...
                'normalized','Position', [0.65 0.38 0.2 0.08],'FontSize',18,...
                'Fontweight','bold','HorizontalAlignment','center');

    set(Datum,'backgroundcolor', background_fig); 

%Textfeld f�r die maximale Temperatur
Tmax_text=sprintf(' Max: %i �C' ,tmax(date_actual));
  
Tmax=uicontrol(figure_nr, 'style', 'text','string', Tmax_text, 'units',...
              'normalized','Position', [0.65 0.24 0.2 0.1],'FontSize',...
              16,'BackgroundColor','w','ForegroundColor','r','Fontweight',...
              'bold','HorizontalAlignment','center'); 

    set(Tmax,'backgroundcolor', background_fig);
      
%Textfeld f�r die minimale Temperatur
Tmin_text=sprintf(' Min: %i �C' ,tmin(date_actual));
 
Tmin=uicontrol(figure_nr, 'style', 'text','string', Tmin_text, 'units',...
              'normalized','Position', [0.65 0.14 0.2 0.1],'FontSize',...
              16,'BackgroundColor','w','ForegroundColor','b','Fontweight',...
              'bold','HorizontalAlignment','center');

    set(Tmin,'backgroundcolor', background_fig);
    
%Textfeld f�r die T�gliche Windgeschwindigkeit
avewind_text=sprintf('Die Windgeschwindigkeit am %i.%i betr�gt %i km/h'...
                     ,dateday(date_actual),datemonth(date_actual),avewind(date_actual));

avewind_Button=uicontrol(figure_nr, 'style', 'text','string', avewind_text,...
                        'units', 'normalized','Position', [0.05 0.24 0.4 0.03],...
                        'HorizontalAlignment','left','Fontweight','bold');

    set(avewind_Button,'backgroundcolor', background_fig);
    
%Textfeld f�r die T�gliche Regenwahrscheinlichkeit
chancerain_text=sprintf('Die Regenwahrscheinlichkeit am %i.%i betr�gt %i %%'...
                        ,dateday(date_actual),datemonth(date_actual),chancerain(date_actual));

chancerain_Button=uicontrol(figure_nr, 'style', 'text','string', chancerain_text,...
                            'units', 'normalized','Position', [0.05 0.31 0.4 0.03],...
                            'HorizontalAlignment','left','Fontweight','bold');

    set(chancerain_Button,'backgroundcolor', background_fig);  
    
%Textfeld f�r die T�gliche Luftfeuchtigkeit
humidity_text=sprintf('Die Luftfeuchtigkeit am %i.%i betr�gt %i %%',...
                       dateday(date_actual),datemonth(date_actual),humidity(date_actual));

humidity_Button=uicontrol(figure_nr, 'style', 'text','string', humidity_text,...
                          'units', 'normalized','Position', [0.05 0.17 0.4 0.03],...
                          'HorizontalAlignment','left','Fontweight','bold');

    set(humidity_Button,'backgroundcolor', background_fig);
    
%Textfeld f�r die T�gliche Niederschlagsmenge
rainfall_text=sprintf('Die Niederschlagsmenge am %i.%i betr�gt %i mm',...
    dateday(date_actual),datemonth(date_actual),rainfall(date_actual));

rainfall_Button=uicontrol(figure_nr, 'style', 'text','string', rainfall_text,'units',...
    'normalized','Position', [0.05 0.1 0.4 0.03],'HorizontalAlignment','left','Fontweight','bold');

    set(rainfall_Button,'backgroundcolor', background_fig);

%Textfeld f�r die T�gliche Schneefallwahrscheinlichkeit

snowfall_text=sprintf('Die Neuschneemenge am %i.%i betr�gt %i cm', dateday(date_actual),...
                      datemonth(date_actual),snowfall(date_actual));

snowfall_Button=uicontrol(figure_nr, 'style', 'text','string', snowfall_text,...
                          'units', 'normalized','Position', [0.05 0.03 0.4 0.03],...
                          'HorizontalAlignment','left','Fontweight','bold');
                      
    set(snowfall_Button,'backgroundcolor', background_fig);
                      
%--------------------------------------------------------------------------

%Erstellen eines Textfeldes f�r die ausge�hlte Wettervorhersage
icon_german = translate(icon,date_actual);

Wettervorhersage_text=sprintf('%s',icon_german,1:14);
  
Wettervorhersage=uicontrol(figure_nr, 'style', 'text','string', Wettervorhersage_text,...
                'units', 'normalized', 'Position', [0.6 0.07 0.2 0.08],'FontSize',...
                12,'HorizontalAlignment','left','Fontweight','bold');
            
set(Wettervorhersage,'backgroundcolor', background_fig);
%--------------------------------------------------------------------------

% Erzeugung eines container f�r grafiken
axes_feld=axes('Parent',figure_nr,'Units','normalized',...
               'Position',[0.5 0.2 0.1 0.15]);         

% Positions �nderung der Grafik
Grafik_einbinden(icon, axes_feld,date_actual,figure_nr)
axis equal;
axis off;

%--------------------------------------------------------------------------

% radiobutten gruppe
buttongroup=uibuttongroup('Position',[0.12 0.49 0.8 0.05],'SelectionChangeFcn',...
            {@Tagesanzeige,rainfall,tmin,tmax,avewind,humidity,chancerain,...
            snowfall,figure_nr,dateday,datemonth,monthname,chancerain_Button,...
            avewind_Button,humidity_Button,rainfall_Button,snowfall_Button,Tmax,...
            Tmin,Datum,Wettervorhersage,axes_feld,icon});
        

%radiobuttens f�r die radiobuttengruppe
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

