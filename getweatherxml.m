path = urlwrite('http://api.wunderground.com/api/aad6eaa289129b55/forecast10day/q/Germany/Oldenburg.xml', 'weather.xml');
xml = xmlread('weather.xml');
weatherdata= parse_xml(xml);

%cell-arrays deklarieren
data={};

%struct deklarieren
s=struct('day','month','temperature_max','temperature_min');

%Schleife zum Auslesen der minimalen und maximalen Temperatur der nächsten 5 Tage
for i=1:5
    %day
    data{i,1}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{1}.children{4}.children;
    %month
    data{i,2}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{1}.children{1}.children{5}.children;
    %Tmax
    data{i,3}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{3}.children{2}.children;
    %Tmin
    data{i,4}=weatherdata.children{1}.children{4}.children{2}.children{1}.children{i}.children{4}.children{2}.children;
   
    %struct erstellen; mit struct(i) kann auf die einzelnen Tage
    %zugegriffen werden, die Tage sind von 1-5 nummeriert
    s(i).day=data{i,1};
    s(i).month=data{i,2};
    s(i).temperature_max=data{i,3};
    s(i).temperature_min=data{i,4};
end