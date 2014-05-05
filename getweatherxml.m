path = urlwrite('http://api.wunderground.com/api/aad6eaa289129b55/forecast10day/q/Germany/Oldenburg.xml', 'weather.xml');
xml = xmlread('weather.xml');
weatherdata= parse_xml(xml);

%cell-array deklarieren
data={};

%Schleife zum Auslesen der minimalen und maximalen Temperatur der nächsten 5 Tage
for i=1:10
    %day
    data{i,1}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{4}.children;
    %month
    data{i,2}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{5}.children;
    %Wochentag
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
    %struct erstellen; mit struct(i) kann auf die einzelnen Tage
    %zugegriffen werden, die Tage sind von 1-5 nummeriert
end

%dateday als Zeilenvektor
for kk=1:10
   V(kk)=str2num(cell2mat(data{kk}));
end