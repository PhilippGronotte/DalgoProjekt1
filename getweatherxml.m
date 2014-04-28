path = urlwrite('http://api.wunderground.com/api/aad6eaa289129b55/forecast10day/q/Germany/Oldenburg.xml', 'weather.xml');
xml = xmlread('weather.xml');
weatherdata= parse_xml(xml);
data=weatherdata.children{1, 1}.children{1, 4}.children{1, 2}.children{1, 1}.children{1, 1}.children{1, 3}.children{1, 2}.children