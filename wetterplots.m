function [] = wetterplots(handle, event,Hoehst_temp,Niedrigst_temp,Windgeschwindigkeit,Luftfeuchtigkeit,...
    Regenwahrscheinlichkeit,Schneefallwahrscheinlichkeit,figure_nr,weekday,rainfall)
% function is for the GUI.m

%------------Your function implementation here--------------------------- 

 
% liest denn aktuellen ausgewählte popup aus
 value = get(handle, 'value');

 %plot der Höchsten und Niedrigsten Temperatur
if value == 1
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Niedrigst_temp,'b')
    title('Höchste und niedrigste Temperatur der nächsten 10 Tage')
    ylabel('Temperatur in °')
    hold on
    plot(Hoehst_temp,'r')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

 %plot der Niedriegsen Temperatur
elseif value == 2
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Niedrigst_temp,'r')
    title('Niedrigste Temperatur der nächsten 10 Tage')
    ylabel('Temperatur in °')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

 %plot der Höchsten Temperatur
elseif value == 3
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Hoehst_temp)
    title('Höchste Temperatur der nächsten 10 Tage')
    ylabel('Temperatur in °') 
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

 %plot der Niederschlagsmenge
elseif value == 4
     figure(figure_nr)
     subplot(2,1,1)
     hold off
     plot(rainfall)
     title('Niederschlagsmenge in mm der nächsten 10 Tage')
     ylabel('Niederschlagsmenge in mm')     
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

 %plot der Luftfeuchtigkeit
elseif value == 5
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    bar(Luftfeuchtigkeit)
    title('Luftfeuchtigkeit der nächsten 10 Tage')
    ylabel('Luftfeuchtigkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

 %plot der Regenwahrscheinlichkeit
elseif value == 6
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    bar(Regenwahrscheinlichkeit)
    title('Regenwahrscheinlichkeit der nächsten 10 Tage')
    ylabel('Regenwahrscheinlichkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

 %plot der Windgeschwindigkeit
elseif value == 7
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Windgeschwindigkeit)
    title('Windgeschwindigkeit der nächsten 10 Tage')
    ylabel('Windgeschwindigkeit in km/h')
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})

%plot der Schneefallwahrscheinlichkeit
else
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot(Schneefallwahrscheinlichkeit)
    title('Neuschnee der nächsten 10 Tage')
    ylabel('Neuschnee in cm')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
end
