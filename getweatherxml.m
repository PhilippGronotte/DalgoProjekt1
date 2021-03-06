%Funktion zum Auslesen der xml-Datei aus dem Internet und der
%Datenaufbereitung aus dieser Datei
function [dateday,datemonth,tmax,tmin,chancerain,avewind,rainfall,snowfall,humidity,weekday,monthname,icon] = getweatherxml(town)

rawxml = sprintf('http://api.wunderground.com/api/aad6eaa289129b55/forecast10day/q/Germany/%s.xml',town) ;
urlwrite(rawxml, 'weather.xml');
xml = xmlread('weather.xml');
weatherdata= parse_xml(xml);

%Cell-Array deklarieren
data={};

%Schleife zum Auslesen der minimalen und maximalen Temperatur der n�chsten 5 Tage
for i=1:10
    %day
    data{i,1}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{4}.children;
    %month
    data{i,2}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{5}.children;
    %day of week
    data{i,3}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{15}.children;
    %Tmax
    data{i,4}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{3}.children{2}.children;
    %Tmin
    data{i,5}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{4}.children{2}.children;
    %Chance of Rain in percent
    data{i,6}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{9}.children;
    %Average wind speed
    data{i,7}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{17}.children{2}.children;
    %Rainfall in mm
    data{i,8}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{10}.children{2}.children;
    %snow in cm
    data{i,9}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{13}.children{2}.children;
    %Humidity
    data{i,10}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{18}.children;
    %monthname
    data{i,11}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{13}.children;
    %Iconstring
    data{i,12}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{6}.children;
    
end

[dateday,datemonth,tmax,tmin,chancerain,avewind,rainfall,snowfall,humidity]=cell2vec(data);

%Erzeugt eine String-Matrix, um mehrere Strings in einer Variable zu
%speichern; mit weekday(x,1:9) kann auf die einzelnen Wochentage
%zugegriffen werden, x ist dabei eine Zahl zwischen 1 und 10
%Wochentage als String
weekday=strvcat([data{21:30}]);
%Monat als String
monthname=strvcat([data{101:110}]);
%Wetterdaten f�r Iconauswahl
icon = strvcat([data{111:120}]);