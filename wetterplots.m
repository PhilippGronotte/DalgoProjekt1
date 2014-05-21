function [] = wetterplots(handle, event,Hoehst_temp,Niedrigst_temp,Windgeschwindigkeit,Luftfeuchtigkeit,...
    Regenwahrscheinlichkeit,Schneefallwahrscheinlichkeit,figure_nr,weekday,rainfall)
% function is for the GUI.m

%------------Your function implementation here--------------------------- 

 
% liest denn aktuellen ausgewählte popup aus
 value = get(handle, 'value');

 %--------------------------------------------------------------------------

 %plot der Höchsten und Niedrigsten Temperatur
if value == 1
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot_tmin = plot(Niedrigst_temp,'b');
    set(plot_tmin,'LineWidth',2)
    main_title = title('Höchste und niedrigste Temperatur der nächsten 10 Tage in °C');
    hold on
    plot_tmax = plot(Hoehst_temp,'r');
    set(plot_tmax,'LineWidth',2)    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)

%--------------------------------------------------------------------------

%plot der Niedriegsen Temperatur
elseif value == 2
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot_tmin = plot(Niedrigst_temp,'b');
    set(plot_tmin,'LineWidth',2)
    main_title = title('Niedrigste Temperatur der nächsten 10 Tage in °C'); 
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)
    
%--------------------------------------------------------------------------

%plot der Höchsten Temperatur
elseif value == 3
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot_tmax = plot(Hoehst_temp,'r');
    set(plot_tmax,'LineWidth',2)
    main_title = title('Höchste Temperatur der nächsten 10 Tage in °C');
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)
    
%--------------------------------------------------------------------------

%plot der Niederschlagsmenge
elseif value == 4
     figure(figure_nr)
     subplot(2,1,1)
     hold off
     bar(rainfall)
     main_title = title('Niederschlagsmenge in mm der nächsten 10 Tage in mm');    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)
    
%--------------------------------------------------------------------------

%plot der Luftfeuchtigkeit
elseif value == 5
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    bar(Luftfeuchtigkeit)
    main_title = title('Luftfeuchtigkeit der nächsten 10 Tage in cm'); 
    ylabel('Luftfeuchtigkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)

%--------------------------------------------------------------------------

%plot der Regenwahrscheinlichkeit
elseif value == 6
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    bar(Regenwahrscheinlichkeit)
    main_title = title('Regenwahrscheinlichkeit der nächsten 10 Tage in %'); 
    ylabel('Regenwahrscheinlichkeit in %')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)
    
%--------------------------------------------------------------------------

%plot der Windgeschwindigkeit
elseif value == 7
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    plot_wind = plot(Windgeschwindigkeit);
    set(plot_wind,'LineWidth',2)
    main_title = title('Windgeschwindigkeit der nächsten 10 Tage in km/h');
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)
    
%--------------------------------------------------------------------------

%plot der Schneefallwahrscheinlichkeit
else
    figure(figure_nr)
    subplot(2,1,1)
    hold off
    bar(Schneefallwahrscheinlichkeit)
    main_title = title('Neuschnee der nächsten 10 Tage in cm');    
    ylabel('Neuschnee in cm')    
    set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10])
    set(gca,'XTickLabel',{weekday(1,1:3),weekday(2,1:3),weekday(3,1:3),...
        weekday(4,1:3),weekday(5,1:3),weekday(6,1:3),weekday(7,1:3),...
        weekday(8,1:3),weekday(9,1:3),weekday(10,1:3)})
    set(main_title,'Fontweight','bold')
    set(main_title,'Fontsize',12)
end
